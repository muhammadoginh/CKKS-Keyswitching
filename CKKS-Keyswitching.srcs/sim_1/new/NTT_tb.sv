`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2024 01:38:14 PM
// Design Name: 
// Module Name: NTT_tb
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


module NTT_tb();

    parameter BW = 48;
    parameter RDIM = 8;
    
    // input
    reg clk;
    reg rstn;
    reg start;
    reg [BW - 1:0] COEF [RDIM - 1: 0];
    reg [BW - 1:0] q;
    reg [BW + 1:0] mu;
    reg [BW - 1:0] y;
    reg [BW - 1:0] psi_stage1 [3:0];    // psi values for stage 1
    reg [BW - 1:0] psi_stage2 [3:0];    // psi values for stage 2
    reg [BW - 1:0] psi_stage3 [3:0];    // psi values for stage 3
    
    // output
    wire [BW - 1:0] EVAL [RDIM - 1: 0];
    wire done;
    
    reg [BW - 1:0] q_table  [8 - 1:0];
    reg [BW + 1:0] mu_table [8 - 1:0];
    reg [BW - 1:0] y_table  [8 - 1:0];
    
    
    // Read input data from file
    initial begin
        $readmemh("D:\\KS_Research\\data\\COEF_form.mem", COEF);
        $readmemh("D:\\KS_Research\\data\\rns_modulus.mem", q_table);
        $readmemh("D:\\KS_Research\\data\\rns_mu.mem", mu_table);
        $readmemh("D:\\KS_Research\\data\\rns_psi.mem", y_table);
    end
    
    // Instantiate the karatsuba_uint_mult module
    NTT #(BW, RDIM) uut (
        .clk(clk),
        .rstn(rstn),
        .start(start),
        .COEF(COEF),
        .q(q),
        .mu(mu),
        .psi_stage1(psi_stage1),
        .psi_stage2(psi_stage2),
        .psi_stage3(psi_stage3),
        .EVAL(EVAL),
        .done(done)
    );
    
    always #2 clk = ~clk;
    
    initial 
    begin
        clk = 1;
        rstn = 0;
        start = 0;
        y = 48'd33753682231496;
        psi_stage1 = {48'd23889437614515, 48'd23889437614515, 48'd23889437614515, 48'd23889437614515};
        psi_stage2 = {48'd66141632700529, 48'd66141632700529, 48'd72130124159120, 48'd72130124159120};
        psi_stage3 = {48'd92084200073195, 48'd40056920598119,  48'd104017045625533, 48'd33753682231496};
        mu = 50'd562949953421052;
        q = 48'd140737488355393;
        
        #4 rstn = 1;
        start = 1;
        
    end
    
endmodule
