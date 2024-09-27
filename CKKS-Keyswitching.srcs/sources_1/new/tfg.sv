`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2024 11:47:10 AM
// Design Name: 
// Module Name: tfg
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


module tfg 
    #(parameter BW = 32) 
    (
        input wire clk,                     // Clock signal
        input wire rstn,                    // Reset signal
        input wire start,                   // Start signal to initiate the computation
        input wire [2-1:0] n,               // Number of elements of psi/inv_psi to generate for each stage
        input wire [BW-1:0] psi,            // Base value 'psi'
        input wire [BW-1:0] q,              // Modulus value 'q'
        input wire [BW+1:0] mu,             // mu value for Barrett reduction
        output reg done,                    // Signal indicating completion
        output reg [BW-1:0] Y_table [0:31]  // Output table (supports up to 32 elements)
    );

    reg [BW-1:0] memo;
    reg [1:0] i;                            // Counter for number of iterations
    reg [3:0] wait_count;                   // Counter to handle latency of modular multiplication (18 cycles)
    reg mul_start;                          // Control signal to start modular multiplication
    wire mul_done;                          // Signal indicating completion of modular multiplication
    wire [BW-1:0] next_element;             // Output from Mod_Mul module

    // State machine for control flow
    reg [1:0] state;
    localparam IDLE = 2'b00, CALC = 2'b01, WAIT = 2'b10, DONE = 2'b11;
    
    // Modular Multiplication
    Mod_Mul2 #(BW) ModMul(  // Latency: 18 cycles
        .clk(clk),
        .rstn(rstn),
        .start(mul_start),  // Start signal for multiplication
        .A(memo),
        .B(psi),
        .q(q),
        .mu(mu),
        .M(next_element),
        .done(mul_done)     // Done signal for multiplication
    );
    
    always @(posedge clk or negedge rstn) begin
        if (~rstn) begin
            done <= 0;
            memo <= 1;
            i <= 0;
            mul_start <= 0;
            wait_count <= 0;
            state <= IDLE;
        end else begin
            case (state)
                IDLE: begin
                    if (start) begin
                        memo <= 1;          // Start with memo = 1 (psi^0 mod q)
                        i <= 0;
                        mul_start <= 0;
                        state <= CALC;
                    end
                end
                CALC: begin
                    if (i < n) begin
                        if (i == 0) begin
                            Y_table[i] <= memo; // For i == 0, store memo (1)
                            i <= i + 1;
                        end else begin
                            mul_start <= 1;     // Start modular multiplication
                            state <= WAIT;      // Move to WAIT state
                        end
                    end else begin
                        state <= DONE;          // All iterations done
                    end
                end
                WAIT: begin
                    mul_start <= 0;             // Deactivate start signal after one cycle
                    if (mul_done) begin         // Wait for modular multiplication to complete
                        Y_table[i] <= next_element; // Store result in Y_table
                        memo <= next_element;       // Update memo for next iteration
                        i <= i + 1;
                        state <= CALC;             // Return to CALC state for next iteration
                    end
                end
                DONE: begin
                    done <= 1;                  // Set done signal to indicate completion
                    state <= IDLE;              // Reset to IDLE for next start
                end
            endcase
        end
    end
endmodule

