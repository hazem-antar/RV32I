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
    input [31:0] DataD,        // rd input data
    input Clk, RegWEn,          // Clock and Write Enable
    output [31:0] DataA, DataB    // rs1, rs2 output values
);

    reg [31:0] Reg[31:0];
    
    /*  Simulation infrastructure
    initial begin
        Reg[1] = 32'h00000014; // X1 holds the compared operand
        Reg[2] = 32'h00000000; // X2 holds the initial value of S7
        Reg[3] = 32'hF0001000; // X3 holds final storing address
    end
    */
    
    assign DataA = Reg[AddrA];
    assign DataB = Reg[AddrB];
    
    always @(posedge Clk) begin
        if (RegWEn) begin
            Reg[AddrD] <= DataD;
        end
    end
    
endmodule
