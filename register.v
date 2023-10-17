`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Institution: McMaster University
// Ph.D. student: Hazem Taha
// 
// Create Date: 10/02/2023 02:34:51 PM
// Project Name: RV32I Implementation
// Module Name: Register

//////////////////////////////////////////////////////////////////////////////////

module register(
    input [31:0] Din,       // Input PC
    input Clk, Reset,       // Input Reset
    output reg [31:0] Dout  // Output PC
);
    
    always @(posedge Clk) begin
        if(Reset) begin
            Dout <= 32'h0;
        end
        else begin
            Dout <= Din;
        end
    end
endmodule
