`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Institution: McMaster University
// Ph.D. student: Hazem Taha
// 
// Create Date: 10/02/2023 02:34:51 PM
// Project Name: RV32I Implementation
// Module Name: ALU

//////////////////////////////////////////////////////////////////////////////////

module ALU (
    input [31:0] A, B,
    input [4:0] shamt,
    input sub_sra,
    input [3:0] func,
    output reg [31:0] alu_out
);

wire [31:0] AdderResult;

// Instantiate the 32-bit adder
Adder32Bit adder32(.A(A), .B(B), .Subtract(sub_sra), .Sum(AdderResult));


always @(A, B, shamt, func, sub_sra) begin
    case (func)
        4'b0000:  // Add or Subtract based on sub_sra
            alu_out = AdderResult;
        4'b0001:  
            alu_out = A ^ B; // XOR 
        4'b0010: 
            alu_out = A | B; // OR
        4'b0011:  
            alu_out = A & B; // AND
            
        4'b0100:  // Shift left immediate
            alu_out = A << shamt;  // logical
            
        4'b0101:  // Shift left register
            alu_out = A << B;      // logical
            
        4'b0110:  // Shift right register
            if(sub_sra)
                alu_out = A >>> B;   // Arithmetic
            else
                alu_out = A >> B;  // Logical 
                
        4'b0111:  // Shift right immediate
            if(sub_sra)
                alu_out = A >>> shamt;   // Arithmetic
            else
                alu_out = A >> shamt;  // Logical
                
         4'b1000:  // SLT 
            alu_out = ($signed(A) < $signed(B));
            
         4'b1001:  // SLTU 
            alu_out = (A < B);
    endcase
end

endmodule
