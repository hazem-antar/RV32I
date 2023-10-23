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
    wire [31:0] WBout;

    // Instantiate the RV32I processor
    RV32I core (
        .clk(clk), .reset(reset), .WBout(WBout)
    );

    // Clock Generation
    always begin
        #4 clk = ~clk; // Generate a 8ns period clock signal
    end

    initial begin
	
	// Store simulation data
    	$dumpfile("simulation_result.fsdb"); 
        $dumpvars(0, RV32I_tb); 

        // Initialize clock
        clk <= 0;
        
        // Set reset signal
        reset <= 1;
        
        #(1)
        
        // Unset reset signal
        reset <= 0;
        
    	// End Simulation
    	#(130);
       	$finish;
    
    end

endmodule
