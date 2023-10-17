module Adder32Bit(
    input [31:0] A,        // 32-bit input A
    input [31:0] B,        // 32-bit input B
    input Subtract,        // Subtract control signal. If high, perform subtraction, else addition
    output [31:0] Sum     // 32-bit output sum/difference
);

    // The array to store carries for each bit
    wire [31:0] C;
    
    // Array to store inverted B
    wire [31:0] B_inverted;

    // Invert B when Subtract is set
    assign B_inverted = Subtract ? ~B : B;

    genvar i;

    // Generate loop to instantiate 32 full adders for 32-bit addition/subtraction
    generate 
        for (i = 0; i < 32; i = i+1) begin : FA_LOOP
            // Instantiate the FullAdder for each bit
            FullAdder FA (
                .A(A[i]),                        // Bit i of input A
                .B(B_inverted[i]),               // Bit i of inverted input B
                // Carry-in of first FullAdder is the subtract signal, the others take the Carry_out of previous adders
                .Cin(i == 0 ? Subtract : C[i-1]), 
                .S(Sum[i]),                      // Bit i of the result
                .Cout(C[i])                       // Carry-out for bit i
            );
        end
    endgenerate

endmodule
