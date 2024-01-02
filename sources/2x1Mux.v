`timescale 1ns / 1ps

module twoXone_mux (
    input [31:0] A, B,
    input S,
    input Reset, // Added Reset input
    output reg [31:0] OUT
);

    // Adjusted always block to incorporate Reset logic
    always @(A, B, S, Reset) begin
        if (Reset) begin
            OUT <= A; // When Reset is active, output A
        end
        else begin
            case(S)
            1'b0: OUT <= A;
            1'b1: OUT <= B;
            default: OUT <= A;
            endcase
        end
    end

endmodule
