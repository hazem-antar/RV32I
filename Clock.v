`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Institution: McMaster University
// Ph.D. student: Hazem Taha
// 
// Create Date: 10/02/2023 02:34:51 PM
// Project Name: RV32I Implementation
// Module Name: Clock

//////////////////////////////////////////////////////////////////////////////////

module Clock(Clk);
output reg Clk;

parameter Duty_Fraction = 0.5;
parameter Clk_prd = 13;
parameter Clk_on = Duty_Fraction * Clk_prd;
parameter Clk_off = Clk_prd - Clk_on;

initial begin
    Clk <= 1;
    while(1) begin
        #(Clk_on) Clk <= 0;
        #(Clk_on) Clk <= 1;
    end
end
endmodule
