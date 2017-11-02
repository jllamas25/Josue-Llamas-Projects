`timescale 1ns / 1ps

module Mux2to16(A, B, sel, OUT);
	input [15:0] A;
	input [15:0] B;
	input sel;
	output [15:0] OUT;
	
	Mux   mux[0:15] ( OUT,A,B,sel);


endmodule
