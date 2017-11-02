`timescale 1ns / 1ps

module InstructionMem(PC, INSTR, clk);
	input clk;
	input [15:0] PC;
	output reg [15:0] INSTR;

	always @(posedge clk) begin
		case(PC)
			0:INSTR= 16'h2003; //R3 temp3
			1:INSTR = 16'h2004;//R1 temp4
			2:INSTR = 16'h2002; //r2 temp2
			3:INSTR = 16'h8014; // lw T1,R1
			4:INSTR = 16'h8022; // lw T2,R2
			5:INSTR = 16'h6212; // T2 <- T2-1
			6:INSTR = 16'h2303; // T3 <= T4+0= R1+0
			7:INSTR = 16'hE20D; // if T2 !=0  go to 5 so 7+D+1= 6 
			8:INSTR = 16'hE033; // sw t3,R3  
			
			default:  INSTR=16'h0000; //

		endcase
	end
endmodule
