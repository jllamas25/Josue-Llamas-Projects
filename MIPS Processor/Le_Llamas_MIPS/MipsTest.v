`timescale 1ns / 1ps

module MipsTest;

	// Inputs
	reg clk;

	// Outputs
	wire [5:0] PC;
	wire [15:0] R1;
	wire [15:0] R2;
	wire [15:0] R3;

	// Instantiate the Unit Under Test (UUT)
	MIPS uut (
		.clk(clk), 
		.PC(PC), 
		.R1(R1), 
		.R2(R2), 
		.R3(R3)
	);

	initial begin
		clk=0;
		forever #1 clk =~clk;
		end


      
endmodule

