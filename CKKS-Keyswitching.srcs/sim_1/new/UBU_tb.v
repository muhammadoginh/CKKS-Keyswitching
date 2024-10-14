`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2024 07:22:30 AM
// Design Name: 
// Module Name: UBU_tb
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

module UBU_tb();
    // Parameters
    parameter BW = 48;

    // Signals
    reg clk;
    reg rstn;
    reg mode;
    reg [BW - 1:0] A0;
    reg [BW - 1:0] A1;
    reg [BW - 1:0] q;
    reg [BW + 1:0] mu;
    reg [BW - 1:0] y;
    wire [BW - 1:0] B0;
    wire [BW - 1:0] B1;


    // Instantiate the UBF module
    UBU #(.BW(BW)) uut (
        .clk(clk),
        .rstn(rstn),
        .mode(mode),
        .A0(A0),
        .A1(A1),
        .q(q),
        .mu(mu),
        .y(y),
        .B0(B0),
        .B1(B1)
    );

    // Clock generation
    always #2 clk = ~clk;  // 250 MHz clock

    initial begin
        // Initialize signals
        clk = 1;
        rstn = 0;
        mode = 0;
        A0 = 0;
        A1 = 0;
        q = 0;
        mu = 0;
        y = 0;

        // Reset the UBF module
        #4 rstn = 1;


        // Test 1: NTT Mode (Cooley-Tukey Butterfly)
        mode = 0;
        q = `q;  // A prime modulus
        mu = 49'd281474977103871;
        A0 = $random % q;  // random
        A1 = $random % q;  // random
        y = 48'd308591034;  // Some value for psi
        #68;
        $display("NTT Mode: B0 = %h, B1 = %h", B0, B1);

        // Test 2: INTT Mode (Gentleman-Sande Butterfly)
        mode = 1;
        q = `q;  // A prime modulus
        mu = 49'd281474977103871;
        A0 = $random % q;  // random
        A1 = $random % q;  // random
        y = 48'd308591034;  // Some value for psi
        #4;
        $display("INTT Mode: B0 = %h, B1 = %h", B0, B1);
      
        
        
        // Finish simulation
        #100;
        $finish;
    end
endmodule
