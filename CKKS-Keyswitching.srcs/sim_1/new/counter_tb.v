`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2024 10:07:26 AM
// Design Name: 
// Module Name: counter_tb
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

module counter_tb();

    // Parameters
    parameter BW = 4;

    // Testbench signals
    reg clk;
    reg ld;
    reg dec;
    reg [BW-1:0] din;
    wire [BW-1:0] dout;
    wire done;

    // Instantiate the counter module
    counter #(.BW(BW)) uut (
        .clk(clk),
        .ld(ld),
        .dec(dec),
        .din(din),
        .dout(dout),
        .done(done)
    );

    // Clock generation
    always #2 clk = ~clk; // 4ns clock period

    // Test sequence
    initial begin
        // Initialize signals
        clk = 0;
        ld = 0;
        dec = 0;
        din = 0;
        
        // Load the value into the counter
        #10;
        din = 4'b1010; // Load 10 into the counter
        ld = 1;
        #10;
        ld = 0;

        // Start decrementing
        #4;
        dec = 1;
        
        // Wait for the counter to finish
        while (!done) #10;
        
        // Stop decrementing
        dec = 0;
        #20;
        
        // Load a new value
        din = 4'b0101; // Load 5 into the counter
        ld = 1;
        #10;
        ld = 0;
        
        // Start decrementing again
        #10;
        dec = 1;
        
        // Wait for the counter to finish
        while (!done) #10;
        
        // Stop the simulation
        dec = 0;
        #20;
        $stop;
    end

endmodule