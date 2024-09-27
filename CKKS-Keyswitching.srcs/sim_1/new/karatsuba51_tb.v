`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2024 08:09:25 PM
// Design Name: 
// Module Name: karatsuba51_tb
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


module karatsuba51_tb();
    /// simulation parameter
    parameter DW = 51;
    reg clk;
    reg rstn;
    reg correct = 0;
    parameter n_tests = 10;
    reg [$clog2(n_tests) - 1:0] total_correct = 0;
    reg [$clog2(n_tests) - 1:0] test_no       = -1;
    
    // input
    reg [DW - 1:0] in1;
    reg [DW - 1:0] in2;
    
    // output
    wire [2*DW - 1:0] out;
    
    // instantiate the unit under test
    karatsuba51 uut(
        .clk(clk),
        .rstn(rstn),
        .in1(in1),
        .in2(in2),
        .out(out)
    );
    
    // verification
    wire [2*DW - 1:0] expected = in1*in2;

    
    // start simulation
    initial
    begin
        clk = 1;
        rstn = 1;
        
        for (integer i = 0; i < n_tests; i = i + 1) begin
            // generate random stimuli
            in1 = $random;
            in2 = $random;
            test_no = test_no + 1;
            
            // Edge 1
            #1;
            clk = ~clk;
            
            if (expected == out) begin
                correct = 1;
                total_correct = total_correct + 1;
            end
            else begin
                correct = 0;
            end
            
            // Edge 2
            #1;
            clk = ~clk;

        end
        
        $finish;
        
    end
endmodule
