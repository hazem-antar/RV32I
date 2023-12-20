`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Institution: McMaster University
// Ph.D. student: Hazem Taha
// 
// Create Date: 10/02/2023 02:34:51 PM
// Project Name: RV32I Implementation
// Module Name: RV32I Processor

//////////////////////////////////////////////////////////////////////////////////

module RV32I_tb;

    reg clk, reset;
    wire [31:0] WBout,imm;
    
    // Instantiate the RV32I processor
    RV32I core (
        .clk(clk), .reset(reset), .WBout(WBout), .imm(imm)
    );

    // Clock Generation
    always begin
        #6 clk = ~clk; // Generate a 8ns period clock signal
    end
    
    
    // Initialize Instruction Memory content
    initial begin
        // 0x3e800093      addi x1 , x0,   1000
        RV32I.Inst_Memory.mem[0] = 32'h3e800093;
        
        // 0x00300113      addi x2 , x0,   3
        RV32I.Inst_Memory.mem[1] = 32'h00300113;
        
        // 0x00000193      addi x3, x0, 0
        RV32I.Inst_Memory.mem[2] = 32'h00000193;

        // 0x00000213      addi x4, x0, 0
        RV32I.Inst_Memory.mem[3] = 32'h00000213;

        // 0x00220863      multiply_loop:  beq x4, x2, 16  
        RV32I.Inst_Memory.mem[4] = 32'h00220863;
        
        // 0x001181b3     add x3, x3, x1
        RV32I.Inst_Memory.mem[5] = 32'h001181b3;
        
        // 0x00120213     addi x4, x4, 1  
        RV32I.Inst_Memory.mem[6] = 32'h00120213;
        
        // 0xff5ff36f    jal x6, multiply_loop
        RV32I.Inst_Memory.mem[7] = 32'hff5ff36f;

    end
    
    initial begin
	
        // Initialize clock
        clk <= 1;
        
        // Set reset signal
        reset <= 1;
        
        #(5)
        
        // Unset reset signal
        reset <= 0;
        
    	// End Simulation after 200ns
	#(200);
       	$finish;
    
    end

endmodule