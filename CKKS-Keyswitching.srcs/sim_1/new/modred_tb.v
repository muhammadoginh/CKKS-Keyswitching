`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2024 10:36:43 PM
// Design Name: 
// Module Name: modred_tb
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

module modred_tb();
    // Parameters
    parameter BW = `BW;
    parameter n_tests  = 30;
    reg correct = 0;
    reg [$clog2(n_tests)-1:0] total_correct = 0;
    reg [$clog2(n_tests)-1:0] test_no       = -1;

    // Inputs
    reg clk;
    reg rstn;
    reg [BW - 1:0] A;
    reg [BW - 1:0] B;
    reg [2*BW - 1:0] X;
    reg [BW - 1:0] q = `q;
    reg [BW + 1:0] mu;

    // Outputs
    wire [BW - 1:0] M;

    // Instantiate the karatsuba_uint_mult module
    modred #(BW) uut (
        .clk(clk),
        .rstn(rstn),
        .X(X),
        .q(q),
        .mu(mu),
        .M(M)
    );
    
    // Verification
    
    wire [BW - 1:0] expected = X % q;

    // Stimulus
    initial begin
        clk = 1;
        rstn = 1;
        mu = 49'd281474977103871;
        for (integer i = 0; i < n_tests; i = i+1) begin
            // Generate stimuli from random inputs
             A = $random % q;  //random
             B = $random % q;  //random   
             X = A * B;

                            
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
    initial $monitor("Test Case: time = %d, clk = %d, A = %d, B = %d, M = %d", $time, clk, A, B, M);
endmodule
