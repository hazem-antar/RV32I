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
    
    // Immediate assignment of data to output
    assign Dout = {{memory[RD_Addr+3]}, {memory[RD_Addr+2]}, {memory[RD_Addr+1]}, {memory[RD_Addr]}}; 
    
    // Initialize memory content
    initial begin
        memory[0] = 8'hb3;
        memory[0] = 8'h00;
        memory[0] = 8'h11;
        memory[0] = 8'h00;
    end
        
endmodule