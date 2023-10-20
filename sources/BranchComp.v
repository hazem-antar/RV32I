`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Institution: McMaster University
// Ph.D. student: Hazem Taha
// 
// Create Date: 10/02/2023 02:34:51 PM
// Project Name: RV32I Implementation
// Module Name: Comparator

//////////////////////////////////////////////////////////////////////////////////

module Comparator (
    input [31:0] A,
    input [31:0] B,
    input UComp,           // 1 for unsigned LT comparison, 0 for signed
    output Eq,
    output LT
);

    assign Eq = (A == B);
    
    // Depending on UComp, do signed or unsigned comparison
    assign LT = (UComp) ? (A < B) : ($signed(A) < $signed(B));  
    
endmodule




