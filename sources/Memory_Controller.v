`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Institution: McMaster University
// Ph.D. student: Hazem Taha
// 
// Create Date: 10/02/2023 02:34:51 PM
// Project Name: RV32I Implementation
// Module Name: Memory Controller

//////////////////////////////////////////////////////////////////////////////////


module Memory_Controller(
    input [31:0] Din_rs2, Din_from_mem,
    input [1:0] Address_in,
    input [2:0] RD_Type,
    input Clk,
    output reg [31:0] Dout_to_mem,
    output reg [31:0] Dout
    );
    
    
    // Read logic
    reg [7:0] byte_data;
    reg [15:0] half_word_data;
    always @(posedge Clk) begin
    
        case(RD_Type[1:0]) // Byte, half-word, or full-word
        
            2'b00: begin // read byte
            
                case(Address_in) // Byte index
                    2'b00:  byte_data <= Din_from_mem[7:0];     // First byte
                    2'b01:  byte_data <= Din_from_mem[15:8];    // Second byte
                    2'b10:  byte_data <= Din_from_mem[23:16];   // Third byte
                    2'b11:  byte_data <= Din_from_mem[31:24];   // Fourth byte
                    default: byte_data <= 8'b0;  
                endcase
                
                case(RD_Type[2]) // Extension type
                    1'b0:  Dout <= { {24{byte_data[7]}}, {byte_data} }; // Signed extension
                    1'b1:  Dout <=  { {24{1'b0}}, {byte_data} };        // Zero extension
                    default: Dout <=  32'b0;   
                endcase
            end
            
            2'b01: begin // read half-word
            
                case(Address_in) // half-word index
                    2'b00:  half_word_data <= Din_from_mem[15:0];   // First half-word
                    2'b01:  half_word_data <= Din_from_mem[31:16];  // Second half-word
                    default: half_word_data <= 16'b0;  
                endcase
                
                case(RD_Type[2]) // Extension type
                    1'b0:  Dout <= { {16{half_word_data[15]}}, {half_word_data} }; // Signed extension
                    1'b1:  Dout <= { {16{1'b0}}, {half_word_data} }; // Signed extension
                    default: Dout <=  32'b0;           
                endcase
            end
            
            2'b10: begin // read full-word
            
                case(Address_in)
                    2'b00:  Dout <= Din_from_mem; 
                    default: Dout <= 32'b0;  
                endcase
                
            end
            
            default : Dout <= 32'b0;  
            
        endcase
        
    end
              
    
    // Write logic
    reg [31:0] write_buffer;
    always @(posedge Clk) begin
        
        // Update write buffer with memory word
        write_buffer <= Din_from_mem;
        
        case(RD_Type[1:0]) // Byte, half-word, or full-word
        
            2'b00: begin // write byte
                case(Address_in) // Byte index
                    2'b00:  write_buffer[7:0] <= Din_rs2[7:0];     // First byte
                    2'b01:  write_buffer[15:8] <= Din_rs2[7:0];    // Second byte
                    2'b10:  write_buffer[23:16] <= Din_rs2[7:0];   // Third byte
                    2'b11:  write_buffer[31:24] <= Din_rs2[7:0];   // Fourth byte
                    default: ;  
                endcase
            end
            
            2'b01: begin // write half-word
                case(Address_in) // half-word index
                    2'b00:  write_buffer[15:0] <= Din_rs2[15:0];   // First half-word
                    2'b01:  write_buffer[31:16] <= Din_rs2[15:0];  // Second half-word
                    default: ;  
                endcase
            end
            
            2'b10: begin // write full-word
                case(Address_in)
                    2'b00:  write_buffer <= Din_rs2; 
                    default:;  
                endcase
            end
            
            default : ;  
            
        endcase
        
        Dout_to_mem <= write_buffer;
        
    end
         
endmodule
