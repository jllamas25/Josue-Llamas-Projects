`timescale 1ns / 1ps

module UnsignedAdder( sum,cout,a,b,cin);
    input [15:0] a;
    input [15:0] b;
    input cin;
    output [15:0] sum;
    output cout;
   
	
	wire[14:0] c;
	wire[15:0] b2; 
	
	
	Adder inst[15:0] (sum, {cout,c}, a, b, {c,cin});


  


endmodule
