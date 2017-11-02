`timescale 1ns / 1ps

module pc(PC, PCnext, clk, nClear);

	input 			clk, nClear;
	input  [15:0] 	PCnext;
	output [15:0] 	PC;
	reg [15:0] pcout;
	
		always @(posedge clk)
		begin
			 if(nClear)
				  pcout = 0 ;
			 else
				  pcout = PCnext ;
		end
		assign PC =pcout;
endmodule
