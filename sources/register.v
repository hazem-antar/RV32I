`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Institution: McMaster University
// Ph.D. student: Hazem Taha
// 
// Create Date: 10/02/2023 02:34:51 PM
// Project Name: RV32I Implementation
// Module Name: Register

//////////////////////////////////////////////////////////////////////////////////

module Program_Counter (
    input       Clk,        // Clock input
    input       Reset,      // Reset input
    input [31:0] PC_In,     // Input for the next PC value
    output reg [31:0] PC_Out    // Output of the current PC value
);

    always @(posedge Clk or posedge Reset) begin
        if (Reset)          
            PC_Out <= 32'h0;
        else
            PC_Out <= PC_In;
    end

endmodule