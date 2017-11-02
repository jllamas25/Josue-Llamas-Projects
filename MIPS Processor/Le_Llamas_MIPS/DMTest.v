`timescale 1ns / 1ps

module DMTest;

	// Inputs
	reg [15:0] addr;
	reg [15:0] datain;
	reg MemWrite;
	reg MemRead;
	reg clk;

	// Outputs
	wire [15:0] dataout;

	// Instantiate the Unit Under Test (UUT)
	DataMemory uut (
		.dataout(dataout), 
		.addr(addr), 
		.datain(datain), 
		.MemWrite(MemWrite), 
		.MemRead(MemRead), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		addr = 0;
		datain = 0;
		MemWrite = 0;
		MemRead = 0;
		clk = 0;
		end
		initial begin
		clk=0;
		forever #1 clk =~clk;
		end

	
		// Wait 100 ns for global reset to finish
		initial begin
		MemWrite=1;
		#2 addr=1; datain=2;
		#2 addr=2; datain=3;
		#2 addr=3; datain=4;
		#2 addr=4; datain=5;
		#2 addr=5; datain=6;
		#2 addr=6; datain=7;
		#2 addr=7; datain=8;
		#2 addr=8; datain=9;
		#2 addr=9; datain=10;
		#2 addr=10; datain=11;
		#2 addr=11; datain=12;
		#2 addr=12; datain=13;
		#2 addr=13; datain=14;
		#2 addr=14; datain=15;
		#2 addr=15; datain=16; 
		#2 MemWrite=0;
		#2 MemRead=1; addr=5;
		#2 addr=3;
		#2 addr=11;
		#2 MemRead=0; 
		

		// Add stimulus here

	end
      
endmodule

