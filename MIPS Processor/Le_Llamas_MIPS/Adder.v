`timescale 1ns / 1ps

module Adder(sum,cout,a,b,cin);
    input a,b;
    input cin;
    output sum;
    output cout;
   
		
	wire a1,a2,a3;
	xor (sum,a,b,cin);
	and g1(a1,a,b);
	and g2(a2,a,cin);
	and g3(a3,b,cin);
	or  (cout,a1,a2,a3);

  


endmodule
