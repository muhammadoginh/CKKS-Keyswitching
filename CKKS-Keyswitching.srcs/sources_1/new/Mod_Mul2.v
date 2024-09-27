`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2024 12:16:38 PM
// Design Name: 
// Module Name: Mod_Mul2
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


module Mod_Mul2
    #(parameter BW = 48)
    (
        input clk,
        input rstn,
        input [BW - 1:0] A,  // Operand A
        input [BW - 1:0] B,  // Operand B
        input [BW - 1:0] q,
        input [BW + 1:0] mu,
        output [BW - 1:0] M,
        output done
    );

    wire [2*BW - 1:0] X;
    
    // integer multiplication
    karatsuba48 multiply(clk, rstn, A, B, X);
    
    // barrett reduction
    modred #(BW) barrett (
        .clk(clk),
        .rstn(rstn),
        .X(X),
        .q(q),
        .mu(mu),
        .M(M)
    );
endmodule
