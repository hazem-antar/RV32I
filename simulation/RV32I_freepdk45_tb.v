`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Institution: McMaster University
// Ph.D. student: Hazem Taha
// 
// Create Date: 10/02/2023 02:34:51 PM
// Project Name: RV32I Implementation
// Module Name: RV32I Processor

//////////////////////////////////////////////////////////////////////////////////

module RV32I_freepdk45_tb;

    reg clk, reset;
    wire [31:0] WBout,imm,inst, pc, pc_plus_four, pc_next;
    
    // Instantiate the RV32I processor
    RV32I_freepdk45 core (
        .clk(clk), .reset(reset), .WBout(WBout), .imm(imm), 
        .inst(inst), .pc(pc), .pc_plus_four(pc_plus_four), .pc_next(pc_next)
    );
    // Clock Generation
    always begin
        #7.5 clk = ~clk; // Generate a 7.5ns period clock signal
    end
    

    // Initialize Instruction Memory content
    initial begin
	$fsdbDumpfile("Data.fsdb");
    	$fsdbDumpvars(0, RV32I_freepdk45_tb); // Dump all signals within the testbench	
	//$monitor($time," PC_out: %b PC_+4: %b PC_In: %b PC_next: %b Clk: %b", core.Program_Counter.PC_Out, core.pc_plus_four, core.Program_Counter.PC_In, core.pc_next, clk);
	$monitor($time," WB_out: %d", core.WBout);

        // 0x3e800093      addi x1 , x0,   1000
        core.Inst_Memory.mem[0] = 32'h3e800093;
        
        // 0x00300113      addi x2 , x0,   3
        core.Inst_Memory.mem[1] = 32'h00300113;
        
        // 0x00000193      addi x3, x0, 0
        core.Inst_Memory.mem[2] = 32'h00000193;

        // 0x00000213      addi x4, x0, 0
        core.Inst_Memory.mem[3] = 32'h00000213;

        // 0x00220863      multiply_loop:  beq x4, x2, 16  
        core.Inst_Memory.mem[4] = 32'h00220863;
        
        // 0x001181b3     add x3, x3, x1
        core.Inst_Memory.mem[5] = 32'h001181b3;
        
        // 0x00120213     addi x4, x4, 1  
        core.Inst_Memory.mem[6] = 32'h00120213;
        
        // 0xff5ff36f    jal x6, multiply_loop
        core.Inst_Memory.mem[7] = 32'hff5ff36f;
	
        // SDF Annotate
    	$sdf_annotate ("RV32I_freepdk45_SYN.sdf", core);
	
        // Initialize clock
        clk <= 1;
        
        // Set reset signal
        reset <= 1;
        
        #(15)
        
        // Unset reset signal
        reset <= 0;
        
    	// End Simulation after 200ns
	#(300);
       	$finish;
    
    end

endmodule