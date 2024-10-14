`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2024 08:02:06 PM
// Design Name: 
// Module Name: barrett
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


module modred
    #(parameter BW = 48)
    (
        input clk,
        input rstn,
        input [2*BW - 1:0] X,
        input [BW - 1:0] q,
        input [BW + 1:0] mu,
        output reg [BW - 1:0] M
    );    
    
    wire [BW:0] q1;
    wire [2*(BW+3) - 1:0] q2;
    wire [BW:0] q3;
    wire [BW+1:0] r;
    wire [2*BW - 1:0] X_d8;
    
    wire [2*(BW+3)-1:0] q3_intermediate;
    
    // Register for inputs
    reg [2 * BW - 1:0] X_reg;
    reg [BW-1:0] q_reg;
    reg [BW+2:0] mu_reg;
    wire [BW+2:0] mu_reg_d4;
    
    wire [BW-1:0] q_reg_d4;

    // Register the inputs at each clock cycle
    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            X_reg <= 0;
            q_reg <= 0;
            mu_reg <= 0;
        end else begin
            X_reg <= X;
            q_reg <= q;
            mu_reg <= mu;
        end
    end
    
    delay #(4, BW) shift1(clk, rstn, q_reg, q_reg_d4);    // after integrate only need 12
    delay #(8, 2*BW) shift2(clk, rstn, X_reg, X_d8);      // after integrate only need 12
    
    karatsuba51 multiply1(clk, rstn, {2'b0, q1}, mu_reg, q2);  // 3cc
    karatsuba51 multiply2(clk, rstn, {2'b00, q3}, {3'b000, q_reg_d4[47:0]}, q3_intermediate);
    
    assign q1 = X_reg >> (BW-1);                  // X >> (k - 1); // Shift to generate q1
    assign q3 = q2 >> (BW+1);                    // q2 >> (k + 1);
    assign r = X_d8 - q3_intermediate;
    
    // Check for overflow
    always @(posedge clk) begin
        if (~rstn) begin
            M <= 0;
        end else begin
            if (r >= q)
                M <= r - q;
            else
                M <= r;
        end
    end
    
endmodule
