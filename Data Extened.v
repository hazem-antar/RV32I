`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Institution: McMaster University
// Ph.D. student: Hazem Taha
// 
// Create Date: 10/02/2023 02:34:51 PM
// Project Name: RV32I Implementation
// Module Name: Data Extender

//////////////////////////////////////////////////////////////////////////////////

module Data_extened (
    input [31:0] Din,      // Memory output
    input [2:0] Type,      // Size selector for sign extension
    output reg [31:0] Dout // Sign-extended output
);

always @(Din, Type) begin
    case(Type)
        3'b000: Dout = { {24{Din[7]}}, Din[7:0] };     // Byte Signed
        3'b001: Dout = { {16{Din[15]}}, Din[15:0] };   // Half word Signed
        3'b010: Dout = Din;                            // Full word, no extension needed
        3'b100: Dout = { {24{1'b0}}, Din[7:0] };       // Byte Unsigned
        3'b101: Dout = { {16{1'b0}}, Din[15:0] };      // Half word Unsigned
        default: Dout = 32'b0;                         // Default case, can be adjusted as needed
    endcase
end

endmodule

