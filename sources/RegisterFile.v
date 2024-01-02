`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Institution: McMaster University
// Ph.D. student: Hazem Taha
// 
// Create Date: 10/02/2023 02:34:51 PM
// Project Name: RV32I Implementation
// Module Name: Register File

//////////////////////////////////////////////////////////////////////////////////

module Register_File (
    input [4:0] AddrA, AddrB, AddrD, // rs1, rs2, rd input address
    input [31:0] DataD,              // rd input data
    input Clk, RegWEn, reset,               // Clock and Write Enable
    output [31:0] DataA, DataB       // rs1, rs2 output values
);

    reg [31:0] Reg[31:0];
    integer i;
    
    assign DataA = Reg[AddrA];
    assign DataB = Reg[AddrB];
    
    always @(posedge Clk) begin
        if (reset) begin
            for (i = 0; i < 32; i = i + 1) begin
                Reg[i] <= {32{1'b0}}; // Concatenation to create a zeroed word of REG_WIDTH bits
            end
        end
        if (RegWEn && AddrD != 5'd0) begin   // Prevent writes to Reg[0]
            Reg[AddrD] <= DataD;
        end
    end
    
endmodule
