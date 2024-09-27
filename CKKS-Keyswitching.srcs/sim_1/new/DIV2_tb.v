`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2024 06:13:28 PM
// Design Name: 
// Module Name: DIV2_tb
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
`include "define.vh"

module DIV2_tb();
    // Parameters
    parameter q = `q;
    parameter integer BW = $clog2(q);
    parameter n_tests  = 5;
    reg correct = 0;
    reg [$clog2(n_tests)-1:0] total_correct = 0;
    reg [$clog2(n_tests)-1:0] test_no       = -1;
    
    parameter inv2 = `inv2;

    // Inputs
    reg clk = 1;
    reg rstn;
    reg [BW - 1:0] X;
    

    // Outputs
    wire [BW - 1:0] M;

    // Instantiate the karatsuba_uint_mult module
    DIV2 #(BW) uut (
        .clk(clk),
        .rstn(rstn),
        .X(X),
        .q(q),
        .M(M)
    );



    // Verification
    wire [2*BW:0] mult = X * inv2;
    wire [BW - 1:0] expected = mult % q;
    
    
    // Stimulus
    initial begin
        rstn = 1;
        for (integer i = 0; i < n_tests; i = i+1) begin
            // Generate stimuli from random inputs
            X = $random % q;  //random  
               
            // Edge 1
            #2
            clk = ~clk;
            test_no = test_no + 1;
            
            // Get correct answers
            if (M == expected) begin
                correct = 1;
                total_correct = total_correct + 1;
            end
            else begin
                correct = 0;     
            end
            
            // Edge 2
            #2
            clk = ~clk;
        end
        $finish;
    end

    // Display input values
    initial $monitor("Test Case: time = %d, clk = %d, X = %d, M = %d", $time, clk, X, M);
    
endmodule
