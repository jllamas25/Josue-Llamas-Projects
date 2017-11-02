`timescale 1ns / 1ps

module SetonLessThan(slt,gt,eq,a,b);
    input [15:0] a,b;
	 output slt,gt,eq;
	 reg slt,gt,eq;
	 
	 always @(a or b)
		begin
			slt =0;
			gt =0;
			eq=0;
			if(a == b)
				eq = 1;
			else if (a > b)
				gt = 1;
			else
				slt = 1;		
	end
endmodule
