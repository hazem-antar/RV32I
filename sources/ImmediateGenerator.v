`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Institution: McMaster University
// Ph.D. student: Hazem Taha
// 
// Create Date: 10/02/2023 02:34:51 PM
// Project Name: RV32I Implementation
// Module Name: Immediate Generator

//////////////////////////////////////////////////////////////////////////////////

module ImmGen (
    input [31:0] inst,      // Input instruction
    input [2:0] ImmSel,     // Selector for I-type, S-type, B-type or J-type
    output [31:0] imm       // Immediate output
);
    
    wire [31:0] i_imm, s_imm, b_imm, j_imm, u_imm, temp;
    
    // Extract the required bits for I-type
    assign i_imm = {{21{inst[31]}}, inst[30:20]};

    // Extract the required bits for S-type
    assign s_imm = {{21{inst[31]}}, inst[30:25], inst[11:7]};
    
    // Extract the required bits for B-type
    assign b_imm = {{20{inst[31]}}, inst[7], inst[30:25], inst[11:8], {1'b0}};
   
    // Extract the required bits for J-type
    assign j_imm = {{12{inst[31]}}, inst[19:12], inst[13], inst[30:21], {1'b0}};
    
    // Extract the required bits for U-type
    assign u_imm = {inst[31:12], {12{1'b0}}};

    // Multiplexer to temporary select the immediate (I, S, B, J) based on the first two bits of ImmSel
    fourXone_mux mux1 (.A(i_imm), .B(s_imm), .C(b_imm), .D(j_imm), .S(ImmSel[1:0]), .OUT(temp));
    
    // Multiplexer to select the immediate (temp, U) based on the last bit of ImmSel
    twoXone_mux mux2 (.A(temp), .B(u_imm), .S(ImmSel[2]), .OUT(imm));

endmodule
