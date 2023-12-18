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
    input Clk, RegWEn,               // Clock and Write Enable
    output [31:0] DataA, DataB       // rs1, rs2 output values
);

    reg [31:0] Reg[31:0];
    
    // Always initialize Reg[0] to 0
    initial Reg[0] = 0;
    
    /* For initializing registers
    initial begin
     
    end
    */
    assign DataA = Reg[AddrA];
    assign DataB = Reg[AddrB];
    
    always @(posedge Clk) begin
        if (RegWEn && AddrD != 5'd0) begin   // Prevent writes to Reg[0]
            Reg[AddrD] = DataD;
        end
    end
    
endmodule
