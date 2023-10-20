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
    input Clk,
    output reg[31:0] Dout
    );
    
    parameter MEMORY_SIZE = 1024;
    
    reg [7:0] memory [MEMORY_SIZE-1:0];
    
    // Prepare read data
    wire [31:0] read_data;
    assign read_data = {{memory[RD_Addr+3]}, {memory[RD_Addr+2]}, {memory[RD_Addr+1]}, {memory[RD_Addr]}}; 
    
    // Initialize memory content
    initial begin
        memory[0] = 8'hb3;
        memory[1] = 8'h80;
        memory[2] = 8'h20;
        memory[3] = 8'h40;
    end
    
    always @(posedge Clk) begin
        Dout <= read_data;
    end
endmodule