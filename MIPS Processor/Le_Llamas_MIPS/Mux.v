`timescale 1ns / 1ps

module Mux(out,a,b,sel);
    output out;
    input a,b,sel;
	 
	 wire selnot,and1,and2;
	 not(selnot,sel);
	 and(and1,a,selnot);
	 and(and2,b,sel);
	 or(out,and1,and2);


endmodule
