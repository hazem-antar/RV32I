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
    output [31:0]WBout, imm
);
    
    wire [31:0] pc, pc_next, pc_plus_four, alu, inst, alu_a, alu_b, mem_data, cont_to_mem, mem_to_cont, wb, rs1_val, rs2_val;
    wire [1:0] WBsel;
    wire [2:0] ImmSel;
    wire [3:0] ALUSel;
    wire pc_sel, RegWEn, Eq, LT, Bsel, Asel, sub_sra, MemWEn_low;  
    
    // Instantiate a Program Counter register
    Program_Counter Program_Counter (.PC_In(pc_next), .Clk(clk), .Reset(reset), .PC_Out(pc));
    
    // Create an adder for (pc+4)
    assign pc_plus_four = pc+32'h00000004;
    
    // Multiplexer to choose the source of next pc (pc+4) or ALU result
    twoXone_mux PC_Source_Mux (.OUT(pc_next), .A(pc_plus_four), .B(alu), .S(pc_sel));
    
    // Instantiate Instruction Memory (always read full word, with no write)
    sram_32b_256_1rw_freepdk45 Inst_Memory(.clk0(clk), .csb0(1'b0), .web0(1'b1), .addr0(pc[9:2]), .din0(32'b0), .dout0(inst));
    
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
    sram_32b_256_1rw_freepdk45 Data_Memory(.clk0(clk), .csb0(1'b0), .web0(MemWEn_low), .addr0(alu[9:2]), .din0(cont_to_mem), .dout0(mem_to_cont));
 
    // Instantiate Memory Controller
    Memory_Controller memory_cont (.Din_rs2(rs2_val), .Din_from_mem(mem_to_cont), .RD_Type(inst[14:12]), .Clk(clk),
     .Address_in(alu[1:0]), .Dout_to_mem(cont_to_mem), .Dout(mem_data));
        
    // Multiplexer for Write Back source
    fourXone_mux Write_Back_Mux(.A(mem_data), .B(alu), .C(pc_plus_four), .D(imm), .S(WBsel), .OUT(wb));
    
    // Instantiate the Control Unit
    control_unit Control_Unit(.opcode(inst[6:0]), .funct3(inst[14:12]), .funct7(inst[30]), .Eq(Eq), .LT(LT), .PCSel(pc_sel), .ImmSel(ImmSel),
    .RegWEn(RegWEn), .BSel(Bsel), .ASel(Asel), .ALUSel(ALUSel), .sub_sra(sub_sra), .MemWEn_low(MemWEn_low), .WBSel(WBsel));
    
    // Output signal to make the top-level synthesizable
    assign WBout = wb;
        
endmodule
