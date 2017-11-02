`timescale 1ns / 1ps

module MIPS( 
 input clk,
 output [5:0]PC, 
 output [15:0] R1, R2, R3);
	wire RegDst,Branch,MemRead,MemtoReg,MemWrite,ALUsrc,RegWrite,Zero,Band0;
	wire [15:0] INSTR, PCnext, PCplus1,ALUin,PCbranch,Aval, Bval,WriteData,ALUout,DataMemOut,PC1;
	wire [3:0]  BorCMux;
	wire [2:0]  ALUop;
	reg null = 0; 
//Control  
ControlUnit    contrl	(INSTR[15:12],RegDst,Branch,MemRead,MemtoReg,ALUop,MemWrite,ALUsrc,RegWrite);
//Program Counter 
pc		         PCount	(PC1, PCnext, clk, nClear);
UnsignedAdder	PCadd		(PCplus1, , 16'b1, PC1, null);
UnsignedAdder	Addshft	(PCbranch, , PCplus1,{12'b0, INSTR[3:0]},null);

//ALU
Mux 		      muxALUin(ALUin,Bval,{12'b0, INSTR[3:0]},ALUsrc);
ALU            alu(Aval,ALUin,ALUout,Cin,Cout,lt,eq,gt,V,ALUop);
and            (Band0,Branch,eq);
Mux2to16       branchmux(PCplus1, PCbranch, Band0,PCnext);	
//InstructionMemory 
InstructionMem	IM	(PC1, INSTR, clk);

// RegisterFile 
RegFile 	      RF	(Aval, Bval,WriteData, INSTR[11:8], INSTR[7:4], BorCMux,RegWrite, nClear, clk);
Mux            RegDest[3:0](BorCMux,INSTR[7:4],INSTR[3:0],RegDst);

//DataMemory
DataMemory	   DM(DataMemOut,ALUout,Bval,MemWrite,MemRead,clk);
Mux			   MemtoRgmux[15:0](WriteData,DataMemOut,ALUout,MemtoReg);
assign PC= PC1;
assign R1 = Aval;
assign R2 = Bval;
assign R3 =	WriteData;
endmodule
