`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2024 02:35:50 PM
// Design Name: 
// Module Name: INTT
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


module INTT
    #(parameter BW = 48, RDIM = 8)
    (
        input              clk,
        input              rstn,
        input              start,
        input   [BW - 1:0] EVAL [RDIM - 1: 0],  // 8-point input evaluation
        input   [BW - 1:0] q,                   // Shared modulus
        input   [BW + 1:0] mu,                  // Shared mu
        input   [BW - 1:0] inv_psi_stage1 [3:0],// inv_psi values for stage 1
        input   [BW - 1:0] inv_psi_stage2 [3:0],// inv_psi values for stage 2
        input   [BW - 1:0] inv_psi_stage3 [3:0],// inv_psi values for stage 3
        output  [BW - 1:0] COEF [RDIM - 1: 0],  // 8-point in coeffision form
        output reg         done
    );
    
    
    // Stage counter for 3 stages
    reg [2:0] state, next_state;
    wire [BW - 1:0] stage_out [RDIM - 1:0];   // Intermediate output signal for current stage
    reg [BW - 1:0] A0_reg [3:0];              // Register for A0 inputs to BUA
    reg [BW - 1:0] A1_reg [3:0];              // Register for A1 inputs to BUA
    reg [BW - 1:0] inv_psi_reg [3:0];             // Register for psi inputs to BUA
    reg           ld, dec;                    // Control signals for counter
    
    // state definition
    localparam IDLE    = 3'b000;
    localparam STAGE1  = 3'b001;
    localparam STAGE2  = 3'b010;
    localparam STAGE3  = 3'b011;
    localparam DONE    = 3'b111;
    

    // Counter instance (21 clock cycles)
    wire counter_done;
    wire [4:0] counter_value;
    reg [4:0] counter_input;
    
    counter #(.BW(5)) stage_counter (
        .clk(clk),
        .ld(ld),
        .dec(dec),
        .din(counter_input),
        .dout(counter_value),
        .done(counter_done)
    );
    
    // combinational block
    // Control logic to select inputs for each stage
    always @(*) begin
        ld = 0;
        dec = 1;
        counter_input = 0;
        done = 0;
        case(state)
            IDLE: begin                
                if (start) begin
                    ld = 1;
                    counter_input = 5'd25;
                    A0_reg = {EVAL[6], EVAL[4], EVAL[2], EVAL[0]};        // First 4 evaluation
                    A1_reg = {EVAL[7], EVAL[5], EVAL[3], EVAL[1]};        // Next 4 evaluation
                    inv_psi_reg = inv_psi_stage1;      // psi values for stage 1
                    next_state =  STAGE1;
                end else
                    next_state = IDLE;
            end
            STAGE1: begin
                ld = 0;
                if (counter_done) begin
                    ld = 1;
                    counter_input = 5'd25;
                    A0_reg = {stage_out[6], stage_out[2], stage_out[4], stage_out[0]};      // First 4 coefficients
                    A1_reg = {stage_out[7], stage_out[3], stage_out[5], stage_out[1]};      // Next 4 coefficients
                    inv_psi_reg = inv_psi_stage2;                           // psi values for stage 2
                    next_state = STAGE2;
                end else
                    next_state = STAGE1;
            end
            STAGE2: begin
                ld = 0;
                if (counter_done) begin
                    ld = 1;
                    counter_input = 5'd25;
                    A0_reg = {stage_out[5:4], stage_out[1:0]};      // First 4 coefficients
                    A1_reg = {stage_out[7:6], stage_out[3:2]};      // Next 4 coefficients
                    inv_psi_reg = inv_psi_stage3;                                                   // psi values for stage 3
                    next_state = STAGE3;
                end else
                    next_state = STAGE2;
            end
            STAGE3: begin
                ld = 0;
                if (counter_done) begin
                    ld = 1;
                    counter_input = 5'd25;
                    next_state = DONE;
                end else
                    next_state = STAGE3;
            end
            DONE: begin
                done = 1;
                ld = 0;
                next_state = IDLE;
                
            end
        endcase
    end
    
    
    // Instantiate one BUA (shared across all stages)
    BUA 
    #(.BW(BW), .N(4))
    BU_Array (
        .clk(clk),
        .rstn(rstn),
        .mode(1'b1),              // INTT mode
        .A0(A0_reg),              // Input first 4 coefficients
        .A1(A1_reg),              // Input next 4 coefficients
        .y(inv_psi_reg),          // inv_psi values (change for each stage)
        .q(q),                    // Shared modulus
        .mu(mu),                  // Shared mu
        .B0(stage_out[3:0]),      // Output first 4 values
        .B1(stage_out[7:4])       // Output next 4 values
    );

    // sequential block
    // define the state register
    always @(posedge clk) begin
        if (!rstn)
            state <= IDLE;
        else
            state <= next_state;
    end

    // Assign final output to stage_out (which will hold the result of the last stage)
    assign COEF = (done == 1) ? stage_out : {48'b0, 48'b0, 48'b0, 48'b0, 48'b0, 48'b0, 48'b0, 48'b0};
endmodule
