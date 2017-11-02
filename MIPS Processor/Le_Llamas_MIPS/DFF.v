`timescale 1ns / 1ps

module DFF(clk, D, Q, nClear);
	input clk, D, nClear;
	output reg Q;
	
	always @(posedge clk or negedge nClear)
	begin
		if (~nClear) 
			Q=0; 
		else 
			Q=D;
	end


endmodule
