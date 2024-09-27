`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2024 07:18:41 AM
// Design Name: 
// Module Name: UBU
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


module UBU
    #(parameter BW = 48)
    (
        input clk,
        input rstn,
        input mode,       // 0: NTT (CT), 1: INTT (GS)
        input [BW - 1:0] A0,
        input [BW - 1:0] A1,
        input [BW - 1:0] q,
        input [BW + 1:0] mu,
        input [BW - 1:0] y,   // psi, psi_inv
        output [BW - 1:0] B0,
        output [BW - 1:0] B1
    );

    // input reg
    reg [BW - 1:0] r_A0, r_A1, r_y, r_q;
    reg [BW + 1:0] r_mu;
    
    // internal reg
    wire [BW - 1:0] mux_out [3:0];    // needed 4 mux
    reg mux_sel [3:0];
    wire [BW - 1:0] mux_out_0;
    wire [BW - 1:0] B0_DIV2, B1_DIV2, sum_mod, sub_mod, mul_mod;
      
    
    always @(posedge clk) begin
        if(~rstn) begin
            r_A0 <= 0;
            r_A1 <= 0;
            r_y <= 0;
            r_q <= 0;
            r_mu <= 0;
        end else begin
            r_A0 <= A0;
            r_A1 <= A1;
            r_y <= y;   // psi or psi_inv
            r_q <= q;     
            r_mu <= mu;     
        end
    end

    always @(*) begin
        case (mode)
            0: begin  // NTT (Latency: 21)
                mux_sel[0] = 0; 
                mux_sel[1] = 1;
                mux_sel[2] = 0; 
                mux_sel[3] = 1; 
            end
            1: begin // INTT (Latency: 24)
                mux_sel[0] = 1;
                mux_sel[1] = 0; 
                mux_sel[2] = 1;
                mux_sel[3] = 0; 
            end
        endcase
    end

    // delay for NTT and INTT
    delay #(.BW(48), .N(20)) mux_out_0_d20(.clk(clk), .rstn(rstn), .in(mux_out[0]), .out(mux_out_0));
    
    assign mux_out[0] = (mode == 0) ? r_A0 : sum_mod;
    assign mux_out[1] = (mode == 0) ? r_A1 : sub_mod;
    assign mux_out[2] = (mode == 0) ? sum_mod : B0_DIV2;
    assign mux_out[3] = (mode == 0) ? sub_mod : B1_DIV2;
        
    // Modular Subtraction
    Mod_Sub #(BW) ModSub(   // Latency: 1
        .clk(clk),
        .rstn(rstn),
        .A((mode == 0) ? mux_out[0] : r_A0),
        .B((mode == 0) ? mul_mod : r_A1),
        .q(r_q),
        .M(sub_mod)
    );
    
    // Modular Subtraction
    Mod_Add #(BW) ModAdd(   // Latency: 1
        .clk(clk),
        .rstn(rstn),
        .A((mode == 0) ? mux_out[0] : r_A0),
        .B((mode == 0) ? mul_mod : r_A1),
        .q(r_q),
        .M(sum_mod)
    );
    
    // Modular Multiplication
    Mod_Mul #(BW) ModMul(  // Latency: 18
        .clk(clk),
        .rstn(rstn),
        .A(mux_out[1]),
        .B(r_y),
        .q(r_q),
        .mu(r_mu),
        .M(mul_mod)
    );

    // Divide by 2 / Latency: 2
    DIV2 #(BW) inv2_0 (clk, rstn, mux_out_0, r_q, B0_DIV2);
    DIV2 #(BW) inv2_1 (clk, rstn, mul_mod, r_q, B1_DIV2);

    assign B0 = mux_out[2];
    assign B1 = mux_out[3];
endmodule
