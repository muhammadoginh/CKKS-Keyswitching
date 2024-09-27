`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2024 10:46:37 AM
// Design Name: 
// Module Name: BUA
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// N : number of butterly unit in an array
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module BUA
    #(parameter BW = 48, parameter N = 4)
    (
        input clk,
        input rstn,
        input mode,                                 // 0: NTT (CT), 1: INTT (GS)
        input  [BW - 1:0] A0 [N - 1:0],             // 4 * BW bit-width input
        input  [BW - 1:0] A1 [N - 1:0],
        input  [BW - 1:0] y  [N - 1:0],             // 4 y (sometimes for psi, psi_inv) for 4 BU
        input  [BW - 1:0] q,                        // Shared modulus
        input  [BW + 1:0] mu,                       // Shared mu
        output [BW - 1:0] B0 [N - 1:0],             // 4 * BW bit-width output for B0
        output [BW - 1:0] B1 [N - 1:0]              // 4 * BW bit-width output for B1
    );

    genvar i;
    generate
        for (i = 0; i < N; i = i + 1) begin : UBF_inst
            UBU #(.BW(BW)) UBU_i (
                .clk(clk),
                .rstn(rstn),
                .mode(mode),
                .A0(A0[i]),         // Extract each A0[i]
                .A1(A1[i]),         // Extract each A1[i]
                .q(q),              // Shared modulus
                .mu(mu),            // Shared mu
                .y(y[i]),           // Extract each y[i]
                .B0(B0[i]),         // Output each B0[i]
                .B1(B1[i])          // Output each B1[i]
            );
        end
    endgenerate
endmodule
