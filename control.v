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
    input clk,
    input reset,
    input [31:0] inst,          // Instruction bits
    input Eq,                   // Comparator equal signal
    input LT,                   // Comparator less than signal
    output reg PCSel,           // Control signal for PC
    output reg [2:0] ImmSel,    // Control signal for immediate type
    output reg RegWEn,          // Register write enable
    output reg BSel,            // B-selector for ALU
    output reg ASel,            // A-selector for ALU
    output reg [2:0] ALUSel,    // ALU operation selector
    output reg sub_sra,         // Signal to notify ALU of subtraction or Shift Right Arithmetic
    output reg [1:0] MemWEn,    // Memory read/write control
    output reg [1:0] WBSel      // Write-back selector
);

    wire [6:0]opcode;
    wire [2:0]funct3;
    
    assign opcode = inst[6:0];
    assign funct3 = inst[14:12];
    
    always@(opcode) begin
    
        case (opcode)
        
            // R-type instructions
            7'b0110011: begin   
               PCSel = 0;  
               ImmSel = 2'bzz;
               RegWEn = 1;
               BSel = 0;
               ASel = 0;
               MemWEn = 0;
               WBSel = 1;
               sub_sra = inst[30];
               case (funct3)
                   3'b000: ALUSel = 4'b0000;  // ADD or SUB operations depending on sub_sra
                   3'b001: ALUSel = 4'b0101;  // SLL operation
                   3'b010: ALUSel = 4'b1000;  // SLT operation
                   3'b011: ALUSel = 4'b1001;  // SLTU operation
                   3'b100: ALUSel = 4'b0001;  // XOR operation
                   3'b101: ALUSel = 4'b0110;  // SRL & SRA operations depending on sub_sra
                   3'b110: ALUSel = 4'b0010;  // OR operation
                   3'b111: ALUSel = 4'b0011;  // AND operation
               endcase
            end
            
            // I-type instructions except loads
            7'b0010011: begin   
                PCSel = 0;  
                ImmSel = 0;  // I-type immediate
                RegWEn = 1;
                BSel = 1;
                ASel = 0;
                MemWEn = 0;
                WBSel = 1;
                sub_sra = inst[30];
                case (funct3)
                    3'b000: ALUSel = 4'b0000; // ADDI operation
                    3'b010: ALUSel = 4'b1000; // SLTI operation
                    3'b011: ALUSel = 4'b1001; // SLTIU operation
                    3'b100: ALUSel = 4'b0001; // XORI operation
                    3'b110: ALUSel = 4'b0010; // ORI operation
                    3'b111: ALUSel = 4'b0011; // ANDI operation
                    3'b001: ALUSel = 4'b0100; // SLLI operation
                    3'b101: ALUSel = 4'b0111; // SRLI & SRAI operations depending on sub_sra
                endcase
            end
                
            // Load instructions (I-type)
            7'b0000011: begin   
                PCSel = 0;  
                ImmSel = 0;   // I-type immediate
                RegWEn = 1;
                BSel = 1;
                ASel = 0;
                MemWEn = 0;
                WBSel = 0;
                ALUSel = 4'b0000;
                sub_sra = 0;
                // Notice that we don't check funct3 here as it is connected direcly to the Extend-Load-Data Module
            end
                
            // S-type instructions
            7'b0100011: begin   
                PCSel = 0;  
                ImmSel = 1;  // S-type immediate
                RegWEn = 0;
                BSel = 1;
                ASel = 0;
                WBSel = 1'bz;
                ALUSel = 4'b0000;
                sub_sra = 0;
                case (funct3)
                    3'b000: MemWEn = 2'b01; // SB
                    3'b001: MemWEn = 2'b10; // SH
                    3'b010: MemWEn = 2'b11; // SW
                endcase
            end
                
            // B-type instructions
            7'b1100011: begin   
                ImmSel = 2;  // B-type immediate
                RegWEn = 0;
                BSel = 1;
                ASel = 1;
                MemWEn = 0;
                WBSel = 1'bz;
                ALUSel = 4'b0000;
                sub_sra = 0;
                case (funct3)
                    3'b000: PCSel = (Eq) ? 1 : 0;  // BEQ
                    3'b001: PCSel = (Eq) ? 0 : 1;  // BNE
                    3'b1x0: PCSel = (LT) ? 1 : 0;  // BLT & BLTU
                    3'b1x1: PCSel = (LT) ? 0 : 1;  // BGE & BGEU
                endcase
            end
            
            // J-type (JAL) instruction
            7'b1101111: begin   
                PCSel = 1;
                ImmSel = 3;  // J-type immediate
                RegWEn = 1;
                BSel = 1;
                ASel = 1;
                MemWEn = 0;
                WBSel = 2;  // Select to write back PC+4
                ALUSel = 4'b0000;
                sub_sra = 0;
            end
            
            // I-type (JALR) instruction
            7'b1100111: begin   
                PCSel = 1;
                ImmSel = 0;  // I-type immediate
                RegWEn = 1;
                BSel = 1;
                ASel = 0;
                MemWEn = 0;
                WBSel = 2;  // Select to write back PC+4
                ALUSel = 4'b0000;
                sub_sra = 0;
            end
            
            // U-type (LUI) instruction
            7'b0110111: begin   
                PCSel = 0;
                ImmSel = 4;  // U-type immediate
                RegWEn = 1;
                BSel = 1'bz;
                ASel = 1'bz;
                MemWEn = 0;
                WBSel = 3;  // Select to write back the immediate directly
                ALUSel = 4'bzzzz;
                sub_sra = 0;
            end
            
            // U-type (AUIPC) instruction
            7'b0010111: begin   
                PCSel = 0;
                ImmSel = 4;  // U-type immediate
                RegWEn = 1;
                BSel = 1;    // Select PC
                ASel = 1;    // Select immediate
                MemWEn = 0;
                WBSel = 1;   // Select to write back the alu result
                ALUSel = 4'b0000;  // Add operands
                sub_sra = 0;
            end
                
        endcase
    end
    
    
endmodule
