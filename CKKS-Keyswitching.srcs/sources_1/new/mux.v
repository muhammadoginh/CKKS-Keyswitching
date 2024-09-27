`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2024 09:42:35 AM
// Design Name: 
// Module Name: mux
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


module mux
    #(parameter DATA_WIDTH = 48)
    (
        input [DATA_WIDTH - 1:0] data_in0,
        input [DATA_WIDTH - 1:0] data_in1,
        input sel,
        output reg [DATA_WIDTH - 1:0] data_out
    );
    
    always @(*) begin
        if (sel == 1'b0)
            data_out = data_in0;
        else
            data_out = data_in1;
    end
endmodule
