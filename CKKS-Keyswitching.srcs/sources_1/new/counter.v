`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2024 06:38:33 PM
// Design Name: 
// Module Name: counter
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


module counter
    #(parameter BW = 4)
    (
        input clk,
        input ld,
        input dec,
        input [BW - 1:0] din,
        output reg [BW - 1:0] dout,
        output done
    );
    
    always @(posedge clk) begin
        if (ld)
            dout <= din;
        else if (dec)
            dout <= dout - 1;
    end

    assign done = (dout == 0) ? 1'b1 : 1'b0;
endmodule
