`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Institution: McMaster University
// Ph.D. student: Hazem Taha
// 
// Create Date: 10/02/2023 02:34:51 PM
// Project Name: RV32I Implementation
// Module Name: RV32I Core

//////////////////////////////////////////////////////////////////////////////////


module RV32I(
    input clk, reset,
    output [31:0]WBout
);
    
    wire [31:0] pc, pc_next, pc_plus_four, alu, inst, imm, alu_a, alu_b, mem, wb, rs1_val, rs2_val;
    wire [1:0] WBsel, MemWEn;
    wire [2:0] ImmSel;
    wire [3:0] ALUSel;
    wire pc_sel, RegWEn, UComp, Eq, LT, Bsel, Asel, sub_sra;  
    
    // Instantiate a Program Counter register
    Program_Counter Program_Counter (.PC_In(pc_next), .Clk(clk), .Reset(reset), .PC_Out(pc));
    
    // Create an adder for (pc+4)
    assign pc_plus_four = pc+32'h00000004;
    
    // Multiplexer to choose the source of next pc (pc+4) or ALU result
    twoXone_mux PC_Source_Mux (.OUT(pc_next), .A(pc_plus_four), .B(alu), .S(pc_sel));
    
    // Instantiate Instruction Memory (always read full word, with no write)
    Instruction_Memory I_Memory (.Dout(inst),.RD_Addr(pc));
    
    // Instantiate Register File
    Register_File Register_File (.AddrA(inst[19:15]), .AddrB(inst[24:20]), .AddrD(inst[11:7]), .DataD(wb), .Clk(clk), 
    .RegWEn(RegWEn), .DataA(rs1_val), .DataB(rs2_val));
    
    // Instantiate a Comparator (Unsigned Comparison determined by instruction bit 13)
    Comparator Branch_Comparator (.A(rs1_val), .B(rs2_val), .UComp(inst[13]), .Eq(Eq), .LT(LT));
    
    // Instantiate Immediate Generator
    ImmGen Immediate_Generator (.inst(inst), .ImmSel(ImmSel), .imm(imm));
    
    // Multiplexer for ALU source A
    twoXone_mux ALU_SourceA_Mux (.OUT(alu_a), .A(rs1_val), .B(pc), .S(Asel));
    
    // Multiplexer for ALU source B
    twoXone_mux ALU_SourceB_Mux (.OUT(alu_b), .A(rs2_val), .B(imm), .S(Bsel));
    
    // Instantiate main ALU
    ALU ALU(.A(alu_a), .B(alu_b), .shamt(inst[24:20]), .sub_sra(sub_sra), .func(ALUSel) ,.alu_out(alu));
    
    // Instantiate Data Memory
    Data_Memory D_Memory (.Din(rs2_val), .Dout(mem), .WR_Addr(alu) ,.RD_Addr(alu), .Clk(clk), .WE(MemWEn),
     .RD_Type(inst[14:12]));
    
    // Multiplexer for Write Back source
    fourXone_mux Write_Back_Mux(.A(mem), .B(alu), .C(pc_plus_four), .D(imm), .S(WBsel), .OUT(wb));
    
    // Instantiate the Control Unit
    control_unit Control_Unit(.opcode(inst[6:0]), .funct3(inst[14:12]), .funct7(inst[30]), .Eq(Eq), .LT(LT), .PCSel(pc_sel), .ImmSel(ImmSel),
    .RegWEn(RegWEn), .BSel(Bsel), .ASel(Asel), .ALUSel(ALUSel), .sub_sra(sub_sra), .MemWEn(MemWEn), .WBSel(WBsel));
    
    // Output signal to make the top-level synthesizable
    assign WBout = wb;
    
endmodule
