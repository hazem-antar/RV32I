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
    output [31:0] Dout
    );
    
    parameter MEMORY_SIZE = 1024;
    
    reg [7:0] memory [MEMORY_SIZE-1:0];
    
    // Read data directly
    assign Dout = {{memory[RD_Addr+3]}, {memory[RD_Addr+2]}, {memory[RD_Addr+1]}, {memory[RD_Addr]}}; 
    
    // Initialize memory content (little Endian)
    initial begin
        // 0x3e800093      addi x1 , x0,   1000
        memory[0] = 8'h93;
        memory[1] = 8'h00;
        memory[2] = 8'h80;
        memory[3] = 8'h3e;
        
        // Write the rest of your code here ..
    end

endmodule