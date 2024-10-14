`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2024 07:44:41 PM
// Design Name: 
// Module Name: Mod_Sub
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// latency 1 CC
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Mod_Sub
    #(parameter BW = 48)     // Bit-width
    (
        input                 clk,
        input                 rstn,
        input      [BW - 1:0] A,
        input      [BW - 1:0] B,
        input      [BW - 1:0] q,
        output reg [BW - 1:0] M
    );
    
    wire [BW:0] Sub;
    
    // input reg
    reg [BW - 1:0] A_reg;
    reg [BW - 1:0] B_reg;
    
    always @(posedge clk or negedge rstn) begin
        if (~rstn) begin
            A_reg <= 0;
            B_reg <= 0;
        end else begin
            A_reg <= A;
            B_reg <= B;
        end
    end
    
    // ############# Datapath #############
    assign Sub = A_reg - B_reg + q;        
    
    // Register to store the final result
    always @(posedge clk or negedge rstn) begin
        if (~rstn)
            M <= 0;
        else
            if (Sub > q)
                M <= Sub - q;
            else
                M <= Sub[BW - 1:0];
    end
    
endmodule
