`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:27:40 12/04/2016 
// Design Name: 
// Module Name:    DFF16bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module DFF16bit(clk, IN, OUT, nClear);
	input clk, nClear;
	input [15:0] IN;
	output [15:0] OUT;

	DFF dff16 [15:0](clk, IN[15:0], OUT[15:0], nClear);

   

endmodule
