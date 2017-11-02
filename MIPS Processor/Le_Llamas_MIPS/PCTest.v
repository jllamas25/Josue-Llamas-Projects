`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:43:40 12/04/2016
// Design Name:   pc
// Module Name:   C:/Users/Josue Llamas/Desktop/ECE/ECE425L/Le_Llamas_MIPS/PCTest.v
// Project Name:  Le_Llamas_MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pc
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PCTest;

	// Inputs
	reg [15:0] PCnext;
	reg clk;
	reg nClear;

	// Outputs
	wire [15:0] PC;

	// Instantiate the Unit Under Test (UUT)
	pc uut (
		.PC(PC), 
		.PCnext(PCnext), 
		.clk(clk), 
		.nClear(nClear)
	);

	initial begin
		// Initialize Inputs
		PCnext = 0;
		clk = 0;
		nClear = 0;
	end
		initial begin
		clk=0;
		forever #1 clk =~clk;
		end 
		

		// Wait 100 ns for global reset to finish
		initial begin

		#1 PCnext= 'h0001;
		#2 PCnext= 'h0005;
		#2 nClear =1;
 
		
		// Add stimulus here

	end
      
endmodule

