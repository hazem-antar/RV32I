`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Institution: McMaster University
// Ph.D. student: Hazem Taha
// 
// Create Date: 10/02/2023 02:34:51 PM
// Project Name: RV32I Implementation
// Module Name: Control Unit

//////////////////////////////////////////////////////////////////////////////////

module control_unit(
    input [6:0]opcode,          // Instruction opcode bits
    input [2:0]funct3,          // Instruction Func3 bits
    input funct7,               // Instruction Func3 bit
    input Eq,                   // Comparator equal signal
    input LT,                   // Comparator less than signal
    output PCSel,           // Control signal for PC
    output [2:0] ImmSel,    // Control signal for immediate type
    output RegWEn,          // Register write enable
    output BSel,            // B-selector for ALU
    output ASel,            // A-selector for ALU
    output [3:0] ALUSel,    // ALU operation selector
    output sub_sra,         // Signal to notify ALU of subtraction or Shift Right Arithmetic
    output MemWEn_low,    // Memory read/write control
    output [1:0] WBSel      // Write-back selector
);
    
    assign PCSel = 
    (opcode == 7'b1100011) ? // B-type instructions
        ((funct3 == 3'b000) ? (Eq)   :   // BEQ
         (funct3 == 3'b001) ? (!Eq)  :   // BNE
         (funct3 == 3'b100) ? (LT)   :   // BLT
         (funct3 == 3'b110) ? (LT)   :   // BLTU
         (funct3 == 3'b101) ? (!LT)  :   // BGE
         (funct3 == 3'b111) ? (!LT)  : 0) : // BGEU
    ((opcode == 7'b1101111) || (opcode == 7'b1100111)) ? 1 : 0; // J-type (JAL) and I-type (JALR) instructions
    
    assign ImmSel = 
    (opcode == 7'b0010011 || opcode == 7'b0000011 || opcode == 7'b1100111) ? 0 :    // I-type instructions and I-type (JALR)
    (opcode == 7'b0100011) ? 1 :    // S-type instructions
    (opcode == 7'b1100011) ? 2 :    // B-type instructions
    (opcode == 7'b1101111) ? 3 :    // J-type (JAL) instruction
    ((opcode == 7'b0110111) || (opcode == 7'b0010111)) ? 4 : 0; // U-type instructions (LUI and AUIPC)

    assign RegWEn = 
    (opcode == 7'b0110011 || opcode == 7'b0010011 || opcode == 7'b0000011 ||
     opcode == 7'b1101111 || opcode == 7'b1100111 || opcode == 7'b0110111 ||
     opcode == 7'b0010111) ? 1 : 0;  // R, I, J, U type instructions
     
    assign BSel = 
    (opcode == 7'b0010011 || opcode == 7'b0000011 || opcode == 7'b0100011 ||
     opcode == 7'b1100011 || opcode == 7'b1101111 || opcode == 7'b1100111 ||
     opcode == 7'b0010111) ? 1 : 0;  // I, S, B, J, (AUIPC) instructions

    assign ASel = 
    (opcode == 7'b1100011 || opcode == 7'b0010111 || opcode == 7'b1101111) ? 1 : 0; // B-type, U-type (AUIPC), JAL instructions

            
    assign MemWEn_low = 
    (opcode == 7'b0100011) ? // S-type instructions
        0 : 1;

    assign WBSel = 
    (opcode == 7'b0110011 || opcode == 7'b0010011 || opcode == 7'b0010111) ? 1 :    // R-type, I-type except loads, U-type (AUIPC) instructions
    (opcode == 7'b0000011) ? 0 :    // Load instructions (I-type)
    (opcode == 7'b1101111 || opcode == 7'b1100111) ? 2 :    // J-type (JAL) and I-type (JALR) instructions
    (opcode == 7'b0110111) ? 3 : 1'b0;   // U-type (LUI) instruction

                   
    assign ALUSel = 
    (opcode == 7'b0110011) ? // R-type instructions
        ((funct3 == 3'b000) ? 4'b0000 :   // ADD or SUB operations depending on sub_sra
         (funct3 == 3'b001) ? 4'b0101 :   // SLL operation
         (funct3 == 3'b010) ? 4'b1000 :   // SLT operation
         (funct3 == 3'b011) ? 4'b1001 :   // SLTU operation
         (funct3 == 3'b100) ? 4'b0001 :   // XOR operation
         (funct3 == 3'b101) ? 4'b0110 :   // SRL & SRA operations depending on sub_sra
         (funct3 == 3'b110) ? 4'b0010 :   // OR operation
         (funct3 == 3'b111) ? 4'b0011 : 4'b0000) : // AND operation
    (opcode == 7'b0010011) ? // I-type instructions except loads
        ((funct3 == 3'b000) ? 4'b0000 :   // ADDI operation
         (funct3 == 3'b010) ? 4'b1000 :   // SLTI operation
         (funct3 == 3'b011) ? 4'b1001 :   // SLTIU operation
         (funct3 == 3'b100) ? 4'b0001 :   // XORI operation
         (funct3 == 3'b110) ? 4'b0010 :   // ORI operation
         (funct3 == 3'b111) ? 4'b0011 :   // ANDI operation
         (funct3 == 3'b001) ? 4'b0100 :   // SLLI operation
         (funct3 == 3'b101) ? 4'b0111 : 4'b0000) : // SRLI & SRAI operations depending on sub_sra
    4'b0000;   // Default value
    
    assign sub_sra = 
    (opcode == 7'b0110011)? funct7: // R-type
        ((opcode == 7'b0010011)? ((funct3==3'b101)? 1 : 0): // I-type (except loads), only SRAI should get 1 
            (0) // Any other type should get 0 
            );  
    
endmodule
