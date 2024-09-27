`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2024 06:04:08 PM
// Design Name: 
// Module Name: DIV2
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Reference https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=9755024
// Latency 1 CC
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DIV2
    #(parameter BW = 48)
    (
        input clk,
        input rstn,
        input [BW - 1:0] X,
        input [BW - 1:0] q,
        output reg [BW - 1:0] M
    );

    reg sel;
    reg [BW - 1:0] X_S1;    // X right shift one time
    reg [BW - 1:0] X_Q1;    // X right shift one time plus (q+1)div2
    reg [BW - 1:0] Q1;      // (q+1)div2
    
    
    // Calculate sel and shift X, also compute (q+1)>>1
    always @(posedge clk or negedge rstn) begin
        if (~rstn) begin
            sel <= 0;
            X_S1 <= 0;
            Q1 <= 0;
        end else begin
            sel <= X[0];           // Store sel in register
            X_S1 <= X >> 1;        // Right shift X
            Q1 <= (q + 1) >> 1;    // Compute (q+1) >> 1
        end
    end

    // Perform addition X_S1 + WQ and store result
    always @(posedge clk or negedge rstn) begin
        if (~rstn) begin
            X_Q1 <= 0;
        end else begin
            X_Q1 <= X_S1 + Q1;  // Add X_S1 and WQ
        end
    end
    
    always @(posedge clk) begin
        if (~rstn) begin
            M <= 0;
        end else begin
            if (sel)
                M <= X_Q1;
            else
                M <= X_S1;
        end 
    end
endmodule
