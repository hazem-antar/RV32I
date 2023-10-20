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
    output [31:0] PC_Out    // Output of the current PC value
);

    reg [31:0] PC_Reg = 32'h00000000;  // Initialized Internal PC register

    always @(posedge Clk or posedge Reset) begin
        if (Reset)          
            PC_Reg <= 32'h00000000;
        else
            PC_Reg <= PC_In;
    end

    // Use a continuous assignment statement to drive the output from the internal register
    assign PC_Out = PC_Reg;

endmodule