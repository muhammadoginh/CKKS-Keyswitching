`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2024 07:59:09 PM
// Design Name: 
// Module Name: karatsuba51
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module karatsuba51
    #(parameter BW = 51)        // 5 cc
    (
        input clk,
        input rstn, // Added reset signal
        input [BW - 1:0] in1,
        input [BW - 1:0] in2,
        output reg [2*BW - 1:0] out
    );
    
    localparam k_part = 17;  // Set k_part directly (BW / 3)
    
    // Input registers
    reg [BW - 1:0] in1_reg;
    reg [BW - 1:0] in2_reg;
    
    always @(posedge clk) begin
        if (!rstn) begin
            in1_reg <= 0;
            in2_reg <= 0;
        end else begin
            in1_reg <= in1;
            in2_reg <= in2;
        end
    end

    // Split the input numbers into three parts
    reg [k_part - 1:0] low1, mid1, high1, low2, mid2, high2;
    always @(posedge clk) begin
        if (!rstn) begin
            low1 <= 0;
            mid1 <= 0;
            high1 <= 0;
            low2 <= 0;
            mid2 <= 0;
            high2 <= 0;
        end else begin
            {high1, mid1, low1} <= in1_reg;
            {high2, mid2, low2} <= in2_reg;
        end
    end
    
    // First stage - Compute partial products
    reg [2*k_part - 1:0] z0, z2, z4;
    wire [2*k_part + 1:0] z1, z3, z5;
    reg [k_part:0] low1mid1, low2mid2, mid1high1, mid2high2, low1high1, low2high2;

    always @(posedge clk) begin
        if (!rstn) begin
            z0 <= 0;
            z2 <= 0;
            z4 <= 0;
        end else begin
            z0 <= low1 * low2;
            z2 <= mid1 * mid2;
            z4 <= high1 * high2;

            low1mid1 <= low1 + mid1;
            low2mid2 <= low2 + mid2;

            mid1high1 <= mid1 + high1;
            mid2high2 <= mid2 + high2;

            low1high1 <= low1 + high1;
            low2high2 <= low2 + high2;
        end
    end
    
    multiply #(k_part+1, k_part+1, 2*k_part+2) mul_z1(low1mid1, low2mid2, z1);    
    multiply #(k_part+1, k_part+1, 2*k_part+2) mul_z3(mid1high1, mid2high2, z3); 
    multiply #(k_part+1, k_part+1, 2*k_part+2) mul_z5(low1high1, low2high2, z5);

    // Pipeline stages for the combination logic
    reg [2*BW-1:0] stage1_out, stage2_out;
    reg [2*k_part - 1:0] z0_reg, z2_reg;
    reg [2*k_part + 1:0] z1_reg;

    // First pipeline stage: shifting and intermediate results
    always @(posedge clk) begin
        if (!rstn) begin
            stage1_out <= 0;
        end else begin
            stage1_out <= (z4 << 68) + 
                          ((z3 - z4 - z2) << 51) + 
                          ((z5 - z0 - z4 + z2) << 34);
            z0_reg <= z0;
            z1_reg <= z1;
            z2_reg <= z2;
        end
    end

    // Second pipeline stage: final addition
    always @(posedge clk) begin
        if (!rstn) begin
            stage2_out <= 0;
        end else begin
            stage2_out <= stage1_out + ((z1_reg - z0_reg - z2_reg) << 17) + z0_reg;
        end
    end

    // Output stage
    always @(posedge clk) begin
        if (!rstn) begin
            out <= 0;
        end else begin
            out <= stage2_out;
        end
    end
endmodule
