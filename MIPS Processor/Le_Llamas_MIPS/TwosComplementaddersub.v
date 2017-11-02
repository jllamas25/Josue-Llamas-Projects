`timescale 1ns / 1ps

module TwosComplementaddersub(sum,cout,V,a,b,cin);

    input [15:0] a;
    input [15:0] b;
    input cin;
    output [15:0] sum;
    output cout,V; 
   
	wire[14:0] c;
	wire[15:0] b2; 
	xor gates[15:0](b2, b, cin);
	
	Adder inst[15:0] (sum, {cout,c}, a, b2, {c,cin});
	xor(V,cout,cin);


endmodule
