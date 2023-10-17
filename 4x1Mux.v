`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Institution: McMaster University
// Ph.D. student: Hazem Taha
// 
// Create Date: 10/02/2023 02:34:51 PM
// Project Name: RV32I Implementation
// Module Name: 4 x 1 Multiplexer

//////////////////////////////////////////////////////////////////////////////////

module fourXone_mux (
    input [31:0] A, B, C, D,      // 4 inputs for the 4x1 MUX
    input [1:0] S,                // 2-bit select signal for 4x1 MUX
    output reg [31:0] OUT
);
    
    always @(A, B, C, D, S)
    begin
        case(S)
            2'b00: OUT = A;
            2'b01: OUT = B;
            2'b10: OUT = C;
            2'b11: OUT = D;
        endcase
    end
endmodule