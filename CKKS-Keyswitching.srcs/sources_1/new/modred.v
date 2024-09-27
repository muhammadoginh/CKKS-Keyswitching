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
    wire [2*BW - 1:0] X_shift13;
    
    wire [2*(BW+3)-1:0] q3_intermediate;

    
    assign q1 = X >> (BW-1);     // X >> (k - 1); // Shift to generate q1

    karatsuba51 multiply1(clk, rstn, {2'b00, q1}, {1'b0, mu}, q2);  // 5cc
    
    assign q3 = q2 >> (BW+1);                    // q2 >> (k + 1);
    
    karatsuba51 multiply2(clk, rstn, {2'b00, q3}, {3'b000, q[47:0]}, q3_intermediate);
    
    delay #(12, 2*BW) shift1(clk, rstn, X, X_shift13);      // after integrate only need 12
    
    assign r = X_shift13 - q3_intermediate;
    
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
