`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2024 08:24:47 PM
// Design Name: 
// Module Name: Mod_Mul
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// latency 18 CC
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Mod_Mul
    #(parameter BW = 48)
    (
        input clk,
        input rstn,
        input [BW - 1:0] A,  // Operand A
        input [BW - 1:0] B,  // Operand B
        input [BW - 1:0] q,
        input [BW + 1:0] mu,
        output [BW - 1:0] M
    );
    
    // Wire for barrett input 
    wire [BW - 1:0] q_in;
    wire [BW + 1:0] mu_in;

    wire [2*BW - 1:0] X;
    
    delay #(4, BW) shift1(clk, rstn, q, q_in);      // after integrate only need 4
    delay #(4, BW+2) shift2(clk, rstn, mu, mu_in);  // after integrate only need 4
    
    // integer multiplication
    karatsuba48 multiply(clk, rstn, A, B, X);
    
    // barrett reduction
    modred #(BW) barrett (
        .clk(clk),
        .rstn(rstn),
        .X(X),
        .q(q_in),
        .mu(mu_in),
        .M(M)
    );
endmodule
