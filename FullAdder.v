// Full Adder module
module FullAdder(
    input A,      // Input A
    input B,      // Input B
    input Cin,    // Carry-in
    output S,     // Sum output
    output Cout   // Carry-out output
);

    // Sum Calculation
    assign S = A ^ B ^ Cin;

    // Carry-out Calculation
    assign Cout = (A & B) | (A & Cin) | (B & Cin);

endmodule
