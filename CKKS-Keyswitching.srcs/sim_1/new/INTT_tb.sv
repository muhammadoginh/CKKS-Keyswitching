`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2024 02:37:46 PM
// Design Name: 
// Module Name: INTT_tb
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


module INTT_tb();

    parameter BW = 48;
    parameter RDIM = 8;
    
    // input
    reg clk;
    reg rstn;
    reg start;
    reg [BW - 1:0] EVAL [RDIM - 1: 0];
    reg [BW - 1:0] q;
    reg [BW + 1:0] mu;
    reg [BW - 1:0] y;
    reg [BW - 1:0] inv_psi_stage1 [3:0];    // inv_psi values for stage 1
    reg [BW - 1:0] inv_psi_stage2 [3:0];    // inv_psi values for stage 2
    reg [BW - 1:0] inv_psi_stage3 [3:0];    // inv_psi values for stage 3
    
    // output
    wire [BW - 1:0] COEF [RDIM - 1: 0];
    wire done;
    
    reg [BW - 1:0] q_table  [8 - 1:0];
    reg [BW + 1:0] mu_table [8 - 1:0];
    reg [BW - 1:0] y_table  [8 - 1:0];
    
    
    // Read input data from file
    initial begin
        $readmemh("D:\\KS_Research\\data\\EVAL_form.mem", EVAL);
        $readmemh("D:\\KS_Research\\data\\rns_modulus.mem", q_table);
        $readmemh("D:\\KS_Research\\data\\rns_mu.mem", mu_table);
        $readmemh("D:\\KS_Research\\data\\rns_inv_psi.mem", y_table);
    end
    
    // Instantiate the karatsuba_uint_mult module
    INTT #(BW, RDIM) uut (
        .clk(clk),
        .rstn(rstn),
        .start(start),
        .EVAL(EVAL),
        .q(q),
        .mu(mu),
        .inv_psi_stage1(inv_psi_stage1),
        .inv_psi_stage2(inv_psi_stage2),
        .inv_psi_stage3(inv_psi_stage3),
        .COEF(COEF),
        .done(done)
    );
    
    always #2 clk = ~clk;
    
    initial 
    begin
        clk = 1;
        rstn = 0;
        start = 0;
        y = 48'd33753682231496;
        inv_psi_stage1 = {48'd106983806123897, 48'd36720442729860, 48'd100680567757274, 48'd48653288282198};
        inv_psi_stage2 = {48'd68607364196273, 48'd68607364196273, 48'd74595855654864, 48'd74595855654864};
        inv_psi_stage3 = {48'd116848050740878, 48'd116848050740878,  48'd116848050740878, 48'd116848050740878};
        mu = 50'd562949953421052;
        q = 48'd140737488355393;
        
        #4 rstn = 1;
        start = 1;
        
    end
    
endmodule
