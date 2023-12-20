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


// Instance of adder-subtructor (sub_sra determines adding or subtracting)
wire [31:0] addsub_result;
DW01_addsub #(32)
    U1 ( .A(A), .B(B), .CI(1'b0), .ADD_SUB(sub_sra), 
         .SUM(addsub_result));
  
// Instance of right shifter for non-immediate (sub_sra determines logical or arithmetic shifting)
wire [31:0] sr_result;
DW_sra #(32, 32)
	  U2 ( .A(A), .SH(B), .SH_TC(sub_sra), .B(sr_result) );      
         
// Instance of right shifter for immediate (sub_sra determines logical or arithmetic shifting)
wire [31:0] sri_result;
DW_sra #(32, 5)
	  U3 ( .A(A), .SH(shamt), .SH_TC(sub_sra), .B(sri_result) );  
	  
// Instance of left shifter for non-immediate
wire [31:0] sl_result;
DW_sla #(32, 32)
	  U4 ( .A(A), .SH(B), .SH_TC(1'b0), .B(sl_result) );

// Instance of left shifter for non-immediate
wire [31:0] sli_result;
DW_sla #(32, 5)
	  U5 ( .A(A), .SH(shamt), .SH_TC(1'b0), .B(sli_result) );

 // Instance of signed comparator
 wire cmp_lt_result;
 DW01_cmp2 #(32)
    U6 ( .A($signed(A)), .B($signed(B)), .LEQ(1'b0), .TC(1'b1),
         .LT_LE(cmp_lt_result));
         
 // Instance of unsigned comparator
 wire cmp_ltu_result;
 DW01_cmp2 #(32)
    U7 ( .A(A), .B(B), .LEQ(1'b0), .TC(1'b0),
         .LT_LE(cmp_ltu_result));
	  
assign alu_out = (func == 4'b0000) ? (addsub_result) : // Add or Subtract based on sub_sra
                 (func == 4'b0001) ? (A ^ B) :     // XOR 
                 (func == 4'b0010) ? (A | B) :     // OR
                 (func == 4'b0011) ? (A & B) :     // AND
                 (func == 4'b0100) ? (sli_result) :   // Shift left immediate logical
                 (func == 4'b0101) ? (sl_result) :       // Shift left logical
                 (func == 4'b0110) ? (sr_result) :  // Shift right logical/arithmatic
                 (func == 4'b0111) ? (sri_result) : // Shift right immediate logical/arithmatic
                 (func == 4'b1000) ? (cmp_lt_result) :  // Less than 
                 (func == 4'b1001) ? (cmp_ltu_result) : // Less than unsigned
                 0;

endmodule
