`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Institution: McMaster University
// Ph.D. student: Hazem Taha
// 
// Create Date: 10/02/2023 02:34:51 PM
// Project Name: RV32I Implementation
// Module Name: 2 x 1 Multiplexer

//////////////////////////////////////////////////////////////////////////////////


module twoXone_mux (
    input [31:0]A, B,
    input S,
    output reg [31:0] OUT
);
    
    always @(A or B or S)
    begin
        OUT = (S==0)? A : B;
    end
endmodule
