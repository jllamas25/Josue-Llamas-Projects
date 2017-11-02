`timescale 1ns / 1ps

module mux16bit(out, a,b,sel);
    output [15:0] out;
    input [15:0] a;
    input [15:0] b;
    input sel;
    
	 Mux m[15:0] (out,a,b,sel);



endmodule
