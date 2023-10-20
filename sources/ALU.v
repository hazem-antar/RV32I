`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Institution: McMaster University
// Ph.D. student: Hazem Taha
// 
// Create Date: 10/02/2023 02:34:51 PM
// Project Name: RV32I Implementation
// Module Name: ALU

//////////////////////////////////////////////////////////////////////////////////

module ALU (
    input [31:0] A, B,
    input [4:0] shamt,
    input sub_sra,
    input [3:0] func,
    output [31:0] alu_out
);

wire [31:0] AdderResult;

// Instantiate the 32-bit adder
Adder32Bit adder32(.A(A), .B(B), .Subtract(sub_sra), .Sum(AdderResult));


assign alu_out = (func == 4'b0000) ? AdderResult : // Add or Subtract based on sub_sra
                 (func == 4'b0001) ? (A ^ B) :     // XOR 
                 (func == 4'b0010) ? (A | B) :     // OR
                 (func == 4'b0011) ? (A & B) :     // AND
                 (func == 4'b0100) ? (A << shamt) :   // Shift left immediate logical
                 (func == 4'b0101) ? (A << B) :       // Shift left logical
                 (func == 4'b0110) ? (sub_sra ? (A >>> B) : (A >> B)) :  // Shift right logical/arithmatic
                 (func == 4'b0111) ? (sub_sra ? (A >>> shamt) : (A >> shamt)) : // Shift right immediate logical/arithmatic
                 (func == 4'b1000) ? ($signed(A) < $signed(B)) :  // Less than 
                 (func == 4'b1001) ? (A < B) : // Less than unsigned
                 0;

endmodule
