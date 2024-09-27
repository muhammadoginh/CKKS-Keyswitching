`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2024 07:48:37 PM
// Design Name: 
// Module Name: Mod_Add_tb
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

module Mod_Add_tb();

    parameter q = `q; // moduli
    parameter BW = $clog2(q);
    parameter n_tests  = 5;
    reg correct = 0;
    reg [$clog2(n_tests)-1:0] total_correct = 0;
    reg [$clog2(n_tests)-1:0] test_no       = -1;
                
    // Input
    reg clk;
    reg rstn;
    reg [BW - 1:0] A;
    reg [BW - 1:0] B;

    // Output
    wire [BW - 1:0] M;

    // Instantiate the unit under test
    Mod_Add #(BW) uut(
        .clk(clk),
        .rstn(rstn),
        .A(A),
        .B(B),
        .q(q),
        .M(M)
    );    
    
    // Verification
    wire [BW:0] sum = A + B;
    wire [BW - 1:0] expected = sum % q;
    
    // generate stimuli
    initial
    begin
        clk = 1;
        rstn = 1;
        for (integer i = 0; i < n_tests; i = i+1) begin
            // Generate stimuli from random inputs
            A = $random % q;  //random
            B = $random % q;  //random            
               
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