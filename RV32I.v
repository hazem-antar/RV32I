`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Institution: McMaster University
// Ph.D. student: Hazem Taha
// 
// Create Date: 10/02/2023 02:34:51 PM
// Project Name: RV32I Implementation
// Module Name: RV32I Processor

//////////////////////////////////////////////////////////////////////////////////


module RV32I();

    wire [31:0]pc, pc_next, pc_plus_four, alu, inst, imm, alu_b, mem, mem_ext, wb;
    wire [1:0] WBsel, MemWEn;
    wire [2:0] ALUSel, ImmSel;
    wire Clk, Reset, pc_sel, RegWEn, UComp, Eq, LT, Bsel, Asel, sub_sra;  
    
    // Instantiate the Clock
    Clock Clock (.Clk(Clk));
    
    // Instantiate a Program Counter register
    register Program_Counter (.Din(pc_next), .Clk(Clk), .Reset(Reset), .Dout(pc));
    
    // Create an adder for (pc+4)
    assign PC_Plus_Four = pc+32'h4;
    
    // Multiplexer to choose the source of next pc (pc+4) or ALU result
    twoXone_mux PC_Source_Mux (.OUT(pc_alu_SrcA), .A(pc_plus_four), .B(alu), .S(pc_sel));
    
    // Instantiate Instruction Memory
    memory Instruction_Memory (.Din(32'hz), .Dout(inst), .WR_Addr(32'hz) ,.RD_Addr(pc), .Clk(Clk), .WE(0));
    
    // Instantiate Register File
     Register_File Register_File (.AddrA(inst[19:15]), .AddrB(inst[24:20]), .AddrD(inst[11:7]), .DataD(wb), .Clk(Clk), 
     .RegWEn(RegWEn), .DataA(rs1_val), .DataB(rs2_val));
    
    // Instantiate a Comparator (Unsigned Comparison determined by instruction bit 13)
    Comparator Branch_Comparator (.A(rs1_val), .B(rs2_val), .UComp(inst[13]), .Eq(Eq), .LT(LT));
    
    // Instantiate Immediate Generator
    ImmGen Immediate_Generator (.inst(inst[31:7]), .ImmSel(ImmSel), .imm(imm));
    
    // Multiplexer for ALU source A
    twoXone_mux ALU_SourceA_Mux (.OUT(alu_b), .A(rs1_val), .B(pc), .S(Asel));
    
    // Multiplexer for ALU source B
    twoXone_mux ALU_SourceB_Mux (.OUT(alu_b), .A(rs2_val), .B(imm), .S(Bsel));
    
    // Instantiate main ALU
    ALU ALU(.A(rs1_val), .B(alu_b), .shamt(inst[24:20]), .sub_sra(sub_sra), .func(ALUSel) ,.alu_out(alu));
    
    // Instantiate Data Memory
    memory Data_Memory (.Din(rs2_val), .Dout(mem), .WR_Addr(alu) ,.RD_Addr(alu), .Clk(Clk), .WE(MemWEn));
    
    // Module that slices and extends the loaded data from memory based on (funct3) bits
    Data_extened Data_Extender (.Din(mem), .Type(inst[14:12]), .Dout(mem_ext));
    
    // Multiplexer for Write Back source
    fourXone_mux Write_Back_Mux(.A(mem_ext), .B(alu), .C(pc_plus_four), .D(imm), .S(WBsel), .OUT(wb));
    
    // Instantiate the Control Unit
    control_unit Control_Unit(.clk(Clk), .reset(Reset), .inst(inst), .Eq(Eq), .LT(LT), .PCSel(pc_sel), .ImmSel(ImmSel),
    .RegWEn(RegWEn), .BSel(Bsel), .ASel(Asel), .ALUSel(ALUSel), .sub_sra(sub_sra), .MemWEn(MemWEn), .WBSel(WBsel));
     
endmodule
