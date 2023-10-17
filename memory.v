`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Institution: McMaster University
// Ph.D. student: Hazem Taha
// 
// Create Date: 10/02/2023 02:34:51 PM
// Project Name: RV32I Implementation
// Module Name: Memory

//////////////////////////////////////////////////////////////////////////////////

module memory(
    input [31:0] Din, WR_Addr, RD_Addr,
    input Clk,
    input [1:0] WE,
    output [31:0] Dout
    );
    
    reg [7:0] Index[1023:0]; // 1KB memory - Byte Addressable
    
    /* Simulation infrastructure
    initial begin
        Index[32'hF000000C] = 8'h00;
        Index[32'hF000000D] = 8'h00;
        Index[32'hF000000E] = 8'h00;
        Index[32'hF000000F] = 8'h0A;
     end 
     */
     
     // Read 4 bytes starting from RD_Addr (Little Endian)
     assign Dout = {Index[RD_Addr+3], Index[RD_Addr+2], Index[RD_Addr+1], Index[RD_Addr]};     
             
     always @(posedge Clk) 
         begin
             case(WE)
             
                2'b01: begin    // Store Byte (Little Endian)
                    Index[WR_Addr] <= Din[7:0];
                end
                
                2'b10: begin    // Store Half-word (Little Endian)
                    Index[WR_Addr] <= Din[7:0];
                    Index[WR_Addr+1] <= Din[15:8];
                end
                
                2'b11: begin    // Store full-word (Little Endian)
                    Index[WR_Addr] <= Din[7:0];
                    Index[WR_Addr+1] <= Din[15:8];
                    Index[WR_Addr+2] <= Din[23:16]; 
                    Index[WR_Addr+3] <= Din[31:24]; 
                end

             endcase
         end
endmodule
