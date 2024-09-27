`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2024 07:51:07 PM
// Design Name: 
// Module Name: delay
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


module delay
    #(parameter N = 1, parameter BW = 48) 
    (
        input clk,
        input rstn,
        input [BW-1:0] in,
        output [BW-1:0] out
    );
    
    genvar i;
    reg [BW-1:0] buffer [N-1:0];
    
    generate 
        for(i=0; i<N; i=i+1) begin
            always @(posedge clk) begin
                if(~rstn) begin
                    buffer[i] <= 0; 
                end else begin
                    if(i == 0) begin
                        buffer[i] <= in;
                    end else begin
                        buffer[i] <= buffer[i-1];
                    end
                end
            end
        end
    endgenerate
    
    assign out = buffer[N-1]; 
endmodule
