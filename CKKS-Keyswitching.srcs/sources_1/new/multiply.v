`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2024 07:55:38 PM
// Design Name: 
// Module Name: multiply
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


(* use_dsp = "yes" *)
module multiply
    #(parameter A_WIDTH = 26,
                B_WIDTH = 17,
                OUT_WIDTH = 43)
    (
        input      [A_WIDTH-1:0]   A,
        input      [B_WIDTH-1:0]   B,
        output     [OUT_WIDTH-1:0] P
    );
    
    assign P = A * B;

endmodule
