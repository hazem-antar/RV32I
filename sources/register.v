`timescale 1ns / 1ps

module Program_Counter (
    input       Clk,        // Clock input
    input       Reset,      // Reset input
    input [31:0] PC_In,     // Input for the next PC value
    output reg [31:0] PC_Out    // Output of the current PC value
);

    // Intermediate register to hold the flip-flop outputs
    reg [31:0] ff_out;

    // Always block for the flip-flops
    always @(posedge Clk) begin
        ff_out <= PC_In; // Update the flip-flop outputs on clock edge
    end

    // Generate 32 2-to-1 multiplexers for the output
    integer i;
    always @(*) begin
        for (i = 0; i < 32; i = i + 1) begin
            PC_Out[i] = Reset ? 1'b0 : ff_out[i];
        end
    end

endmodule
