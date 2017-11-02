`timescale 1ns / 1ps

module ALU(X,Y,out,cin,cout,lt,eq,gt,V,opcode);
    input [15:0] X,Y;
    output [15:0] out;
	 input cin;
    output cout;
    output lt;
    output eq;
    output gt;
    output V; 
    input [2:0] opcode;
	 
	 wire [15:0] a,b,c,e ;
	 
	 AND16bit and16 (a,X,Y);					   // a= X^Y
	 Or16bit  or16 (b,X,Y);							// b=X or Y
	 SetonLessThan slt1 (lt,gt,eq,X,Y);			// compares X and Y and then outputs the comparison
	 
	 TwosComplementaddersub F1 (c,cout,V,X,Y,opcode[2]);// x+y=c cin determines the operation
	 mux16bit and_or(e, a,b,opcode[0]);
	 mux16bit math_logic (out,e,c,opcode[1]);


endmodule
