`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2024 07:56:37 PM
// Design Name: 
// Module Name: karatsuba48
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 3 cc
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module karatsuba48  // 3 cc
    #(parameter BW = 48,
                k_part = BW/3)        
    (
        input clk,
        input rstn, // Added reset signal
        input [BW - 1:0] in1,
        input [BW - 1:0] in2,
        output [2*BW - 1:0] out
    );
    
    // Input registers
    reg [BW - 1:0] in1_reg;
    reg [BW - 1:0] in2_reg;
    
    // First stage - Compute partial products
    wire [2*k_part - 1:0] z0, z2, z4;
    wire [2*k_part + 1:0] z1, z3, z5;
    wire [k_part:0] low1mid1, low2mid2, mid1high1, mid2high2, low1high1, low2high2;
    
    // Split the input numbers into three parts
    wire [k_part - 1:0] low1, mid1, high1, low2, mid2, high2;
    
    // Pipeline stages for the combination logic
    reg [2*BW-1:0] stage1_out, stage2_out;
    reg [2*k_part + 1:0] z1_reg;
    reg [2*k_part - 1:0] z0_reg, z2_reg;
    
    always @(posedge clk) begin
        if (!rstn) begin
            in1_reg <= 0;
            in2_reg <= 0;
        end else begin
            in1_reg <= in1;
            in2_reg <= in2;
        end
    end
    
    assign {high1, mid1, low1} = in1_reg;
    assign {high2, mid2, low2} = in2_reg;
    
    assign low1mid1 = low1 + mid1;
    assign low2mid2 = low2 + mid2;
    assign mid1high1 = mid1 + high1;
    assign mid2high2 = mid2 + high2;
    assign low1high1 = low1 + high1;
    assign low2high2 = low2 + high2;
    
    multiply #(k_part+1, k_part+1, 2*k_part+2) mul_z1(clk, rstn, low1mid1, low2mid2, z1);    
    multiply #(k_part+1, k_part+1, 2*k_part+2) mul_z3(clk, rstn, mid1high1, mid2high2, z3); 
    multiply #(k_part+1, k_part+1, 2*k_part+2) mul_z5(clk, rstn, low1high1, low2high2, z5);
    
    multiply #(k_part, k_part, 2*k_part) mul_z0(clk, rstn, low1, low2, z0);    
    multiply #(k_part, k_part, 2*k_part) mul_z2(clk, rstn, mid1, mid2, z2); 
    multiply #(k_part, k_part, 2*k_part) mul_z4(clk, rstn, high1, high2, z4);

    // First pipeline stage: shifting and intermediate results
    always @(posedge clk) begin
        if (!rstn) begin
            stage1_out <= 0;
            z1_reg <= 0;
            z0_reg <= 0;
            z2_reg <= 0;
        end else begin
            stage1_out <= (z4 << 64) + 
                          ((z3 - z4 - z2) << 48) + 
                          ((z5 - z0 - z4 + z2) << 32);
            z1_reg <= z1;
            z0_reg <= z0;
            z2_reg <= z2;
        end
    end

    // Second pipeline stage: final addition
    always @(posedge clk) begin
        if (!rstn) begin
            stage2_out <= 0;
        end else begin
            stage2_out <= stage1_out + ((z1_reg - z0_reg - z2_reg) << 16) + z0_reg;
        end
    end

    // Output stage
    assign out = stage2_out;

endmodule
