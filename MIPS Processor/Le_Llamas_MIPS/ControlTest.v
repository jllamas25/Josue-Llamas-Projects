`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:46:54 12/04/2016
// Design Name:   ControlUnit
// Module Name:   C:/Users/Josue Llamas/Desktop/ECE/ECE425L/Le_Llamas_MIPS/ControlTest.v
// Project Name:  Le_Llamas_MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ControlUnit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ControlTest;

	// Inputs
	reg [4:0] opcode;

	// Outputs
	wire RegDst;
	wire Branch;
	wire MemRead;
	wire MemToReg;
	wire [2:0] ALUop;
	wire MemWrite;
	wire ALUsrc;
	wire RegWrite;

	// Instantiate the Unit Under Test (UUT)
	ControlUnit uut (
		.opcode(opcode), 
		.RegDst(RegDst), 
		.Branch(Branch), 
		.MemRead(MemRead), 
		.MemToReg(MemToReg), 
		.ALUop(ALUop), 
		.MemWrite(MemWrite), 
		.ALUsrc(ALUsrc), 
		.RegWrite(RegWrite)
	);

	initial begin
		// Initialize Inputs
		opcode = 0;

		// Wait 100 ns for global reset to finish
		#1
		opcode = 'h1;
		#1 opcode= 'h5;
		#1 opcode= 'hA;
        
		// Add stimulus here

	end
      
endmodule

