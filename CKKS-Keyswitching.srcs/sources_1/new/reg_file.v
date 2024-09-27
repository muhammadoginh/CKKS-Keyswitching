`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2024 01:16:06 PM
// Design Name: 
// Module Name: reg_file
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 2-ports (1 synch read / 1 synch write)
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module reg_file
    #(parameter ADDR_WIDTH = 3, DATA_WIDTH = 8) 
    // ADDR_WIDTH represent depth (2**ADDR_WIDTH)
    // DATA_WIDTH represent width
    // size of memory array is depth x width
    (
        input clk,
        input rstn,
        input we,
        input en,
        input [ADDR_WIDTH - 1:0] r_addr,    // reading address
        input [ADDR_WIDTH - 1:0] w_addr,    // writing address
        input [DATA_WIDTH - 1:0] w_data,    // writing data
        output [DATA_WIDTH - 1:0] r_data    // reading data
    );
    
    reg [DATA_WIDTH - 1:0] memory [0:2**ADDR_WIDTH - 1];   // conventionally, memory has an index from 0, while data starts from msb to lsb
    
    // write operation
    // synchronous
    always @(posedge clk)
    begin
        if (we)
            memory[w_addr] <= w_data;
    end
    
    // read operation
    // asynchonous
    assign r_data = memory[r_addr];
endmodule
