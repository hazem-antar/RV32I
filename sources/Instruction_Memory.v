`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Institution: McMaster University
// Ph.D. student: Hazem Taha
// 
// Create Date: 10/02/2023 02:34:51 PM
// Project Name: RV32I Implementation
// Module Name: Memory

//////////////////////////////////////////////////////////////////////////////////

module Instruction_Memory(
    input [31:0] RD_Addr, 
    input Clk, Reset,
    output [31:0] Dout
    );
    
    parameter MEMORY_SIZE = 1024;
    
    reg [7:0] memory [MEMORY_SIZE-1:0];
    
    // Read data directly
    assign Dout = {{memory[RD_Addr+3]}, {memory[RD_Addr+2]}, {memory[RD_Addr+1]}, {memory[RD_Addr]}}; 
    
    // Initialize memory content
    initial begin
        // 0x3e800093      addi x1 , x0,   1000
        memory[0] = 8'h93;
        memory[1] = 8'h00;
        memory[2] = 8'h80;
        memory[3] = 8'h3e;
        
        // 0x00300113      addi x2 , x0,   3
        memory[4] = 8'h13;
        memory[5] = 8'h01;
        memory[6] = 8'h30;
        memory[7] = 8'h00;
        
        // 0x00000193      addi x3, x0, 0
        memory[8] = 8'h93;
        memory[9] = 8'h01;
        memory[10] = 8'h00;
        memory[11] = 8'h00;
        
        // 0x00000213      addi x4, x0, 0
        memory[12] = 8'h13;
        memory[13] = 8'h02;
        memory[14] = 8'h00;
        memory[15] = 8'h00;
        
        // 0x00220863      multiply_loop:  beq x4, x2, 16  
        memory[16] = 8'h63;
        memory[17] = 8'h08;
        memory[18] = 8'h22;
        memory[19] = 8'h00;
        
        // 0x001181b3     add x3, x3, x1
        memory[20] = 8'hb3;
        memory[21] = 8'h81;
        memory[22] = 8'h11;
        memory[23] = 8'h00;
        
        // 0x00120213     addi x4, x4, 1  
        memory[24] = 8'h13;
        memory[25] = 8'h02;
        memory[26] = 8'h12;
        memory[27] = 8'h00;
        
        // 0xff5ff36f    jal x6, multiply_loop
        memory[28] = 8'h6f;
        memory[29] = 8'hf3;
        memory[30] = 8'h5f;
        memory[31] = 8'hff;
    end

endmodule