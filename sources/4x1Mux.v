`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Institution: McMaster University
// Ph.D. student: Hazem Taha
// 
// Create Date: 10/02/2023 02:34:51 PM
// Project Name: RV32I Implementation
// Module Name: 4 x 1 Multiplexer

//////////////////////////////////////////////////////////////////////////////////

module fourXone_mux (
    input [31:0] A, B, C, D,      // 4 inputs for the 4x1 MUX
    input [1:0] S,                // 2-bit select signal for 4x1 MUX
    output [31:0] OUT
);
        
    assign OUT = (S == 2'b00) ? A : 
                 (S == 2'b01) ? B : 
                 (S == 2'b10) ? C : 
                 (S == 2'b11) ? D : A;
    
endmodule