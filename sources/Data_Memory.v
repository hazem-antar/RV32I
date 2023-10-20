`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Institution: McMaster University
// Ph.D. student: Hazem Taha
// 
// Create Date: 10/02/2023 02:34:51 PM
// Project Name: RV32I Implementation
// Module Name: Memory

//////////////////////////////////////////////////////////////////////////////////

module Data_Memory(
    input [31:0] Din, 
    input [31:0] WR_Addr, RD_Addr,
    input Clk,
    input [1:0] WE,
    input [2:0] RD_Type,
    output [31:0] Dout
    );
    
    parameter MEMORY_SIZE = 1024;
    
    reg [7:0] memory [MEMORY_SIZE-1:0]; // 1KB memory - Byte Addressable
    
    // Initializing memory for testbench --------------------------------------
    
    /* 
    initial begin
        memory[0] = 32'h001100b3;
     end 
    */
     
     
    // Reading from memory (Combinational Logic)-------------------------------------
    
    // Read whole word
    wire [31:0] read_buffer = {{memory[{{RD_Addr[31:2]},{2'b11}}]}, {memory[{{RD_Addr[31:2]},{2'b10}}]},
     {memory[{{RD_Addr[31:2]},{2'b01}}]}, {memory[{{RD_Addr[31:2]},{2'b00}}]}}; 
    
    // Shift the word to start where you want to read
    wire [31:0] shifted_buffer;
    assign shifted_buffer = (RD_Addr[1:0] == 2'b01) ? (read_buffer >> 8) : // right shift 1 byte
                            (RD_Addr[1:0] == 2'b10) ? (read_buffer >> 16) :// right shift 2 byte
                            (RD_Addr[1:0] == 2'b11) ? (read_buffer >> 24) :// right shift 3 byte
                             read_buffer;  // Do not shift (reading will happen from the beginning)
    
     
    wire [31:0] extended_buffer;
    assign extended_buffer = (RD_Type[1:0] == 2'b00) ?    // read byte
                                // Choose the type of extension
                                ((RD_Type[2] == 1'b0) ? 
                                    // Signed extension
                                    { {24{shifted_buffer[7]}}, shifted_buffer[7:0] } : 
                                    // Zero extension
                                    { {24{1'b0}}, shifted_buffer[7:0] }) :  
                             
                             ((RD_Type[1:0] == 2'b01) ?   // read half word
                                // Do we read first or second half word aligned access?
                                ((RD_Addr[1:0] == 2'b00) || (RD_Addr[1:0] == 2'b10) ? 
                                    // Yes, choose the type of extension
                                    ((RD_Type[2] == 1'b0) ?
                                        // Signed extension
                                        { {16{shifted_buffer[15]}}, shifted_buffer[15:0] } : 
                                        // Zero extension
                                        { {16{1'b0}}, shifted_buffer[15:0] } ) :
                                    // No, EXCEPTION Unaligned access prevented
                                    32'h0) : 
                                     
                             // read full word
                                // Do we read word from first byte (aligned access)?
                                ((RD_Addr[1:0] == 2'b00) ?
                                    // Yes, output the full word
                                    shifted_buffer :
                                    // No, EXCEPTION Unaligned access prevented
                                    32'h0));
                         
    assign Dout = extended_buffer;
    
    // Writing to memory (Sequential Logic)-------------------------------
   
    always @(posedge Clk) begin
    
        if(WE!=0) begin  // Write operation
                          
            case(WE)
             
                2'b01: begin    // Store Byte (Little Endian)
                    memory[WR_Addr] <= Din[7:0];
                end
                
                2'b10: begin    // Store Half-word (Little Endian)
                    case(WR_Addr[1:0])
                        2'b00: begin  // Write on first half word
                            memory[WR_Addr] <= Din[7:0];
                            memory[WR_Addr+1] <= Din[15:8];
                        end
                        2'b10: begin  // Write on second half word
                            memory[WR_Addr] <= Din[7:0];
                            memory[WR_Addr+1] <= Din[15:8]; 
                        end
                         default : begin  // EXCEPTION (Unaligned access prevented)
                    
                        end
                    endcase
                end
                
                2'b11: begin    // Store full-word (Little Endian)
                    case(WR_Addr[1:0])
                        2'b00: begin  // Write on the first 4 bytes
                            memory[WR_Addr] <= Din[7:0];
                            memory[WR_Addr+1] <= Din[15:8];
                            memory[WR_Addr+2] <= Din[23:16]; 
                            memory[WR_Addr+3] <= Din[31:24]; 
                        end
                        default : begin  // EXCEPTION (Unaligned access prevented)

                        end
                    endcase 
                end
        
             endcase
        end
    
    end
    
    endmodule
