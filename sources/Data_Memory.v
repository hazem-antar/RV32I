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
    output reg [31:0] Dout
    );
    
    parameter MEMORY_SIZE = 1024;
    
    reg [7:0] memory [MEMORY_SIZE-1:0]; // 1KB memory - Byte Addressable
    
    // Initializing memory for testbench --------------------------------------
    
    /* 
    initial begin
       
     end 
    */
     
    //(Combinational Logic)-------------------------------------
    
    wire [31:0] read_data; // Wire to hold prepared read data
    assign read_data = (RD_Type[1:0] == 2'b00) ? // read byte?
                        // Yes, read byte
                        ((RD_Type[2] == 1'b0)? // Extension type?
                            // Signed
                            { {24{memory[RD_Addr][7]}}, {memory[RD_Addr][7:0]} } : 
                            // Zero
                            { {24{1'b0}}, {memory[RD_Addr][7:0]} }) :
                        // No, not byte
                        ((RD_Type[1:0] == 2'b00) ?  // read half word?
                            // Yes, read half word
                            (((RD_Addr[1:0] == 2'b00) || (RD_Addr[1:0] == 2'b10))? // Do we read an aligned half word?
                                // Yes, aligned half word read
                                ((RD_Type[2] == 1'b0)? // Extension type?
                                    // Signed
                                    { {16{memory[RD_Addr+1][7]}}, {memory[RD_Addr+1]}, {memory[RD_Addr]} } : 
                                    // Zero
                                    { {16{1'b0}}, {memory[RD_Addr+1]}, {memory[RD_Addr]} }):
                                // No, unaligned half word read prevented
                                (32'h0)):
                            // No, not half word, must be a wrod
                            ((RD_Addr[1:0] == 2'b00) ?  // Do we read an aligned word?
                                // Yes, aligned word read
                                ({{memory[RD_Addr+3]}, {memory[RD_Addr+2]}, {memory[RD_Addr+1]}, {memory[RD_Addr]}}):
                                // No, unaligned word read prevented
                                (32'h0))
                        );
    
    
    // (Sequential Logic)-------------------------------
   
    always @(posedge Clk) begin
                     
        case(WE)
         
            2'b01: begin    // Store Byte (Little Endian)
                memory[WR_Addr] <= Din[7:0];
            end
            
            2'b10: begin    // Store Half-word (Little Endian)
                case(WR_Addr[1:0])
                    2'b00, 2'b10 : begin  // Write on first or second half word
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
            
            default: Dout <= read_data;  // Otherwise (WE = 00), output read data
    
         endcase
    
    end
    
    endmodule
