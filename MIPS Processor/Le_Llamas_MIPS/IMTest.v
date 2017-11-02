`timescale 1ns / 1ps

module IMTest;

	// Inputs
	reg [15:0] PC;
	reg clk;

	// Outputs
	wire [15:0] INSTR;

	// Instantiate the Unit Under Test (UUT)
	InstructionMem uut (
		.PC(PC), 
		.INSTR(INSTR), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		PC = 0;
		clk = 0;
		end
		initial begin
		clk=0;
		forever #1 clk =~clk;
		end
		


		// Wait 100 ns for global reset to finish
		initial begin
		#1 PC = 'h0001;
		#2 PC = 'h0002;
		#2 PC = 'h0003;
		#2 PC = 'h0004;
		#2 PC = 'h0005;
		#2 PC = 'h0006;
		#2 PC = 'h0007;
		#2 PC = 'h0008;
		end
        
		// Add stimulus here


      
endmodule

