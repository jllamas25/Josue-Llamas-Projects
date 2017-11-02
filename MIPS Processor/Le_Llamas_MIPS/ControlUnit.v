`timescale 1ns / 1ps

module ControlUnit(opcode,RegDst,Branch,MemRead,MemToReg,ALUop,MemWrite,ALUsrc,RegWrite);
	input [4:0] opcode;
	output reg RegDst, Branch, MemRead, MemToReg,MemWrite, ALUsrc, RegWrite;
	output reg [2:0] ALUop;

	always @(opcode) begin
		case (opcode) 
			'h2: begin //ADD
					RegDst<=1;
					Branch<=0;
					MemRead<=0;
					MemToReg<=0;
					ALUop<=3'b011;
					MemWrite<=0; 
					ALUsrc<=0;
					RegWrite<=1;
			end
			'h6: begin //SUB
					RegDst<=1;
					Branch<=0;
					MemRead<=0;
					MemToReg<=0;
					ALUop<=3'b100;
					MemWrite<=0;
					ALUsrc<=0;
					RegWrite<=1;
			end
			'h0: begin //AND
					RegDst<=1;
					Branch<=0;
					MemRead<=0;
					MemToReg<=0;
					ALUop<=3'b000;
					MemWrite<=0;
					ALUsrc<=0;
					RegWrite<=1;
			end
			'h1: begin //OR
					RegDst<=1;
					Branch<=0;
					MemRead<=0;
					MemToReg<=0;
					ALUop<=3'b001;
					MemWrite<=0;
					ALUsrc<=0;
					RegWrite<=1;
			end
			'h7: begin //SLT
					RegDst<=1;
					Branch<=0;
					MemRead<=0;
					MemToReg<=0;
					ALUop<=3'b101;
					MemWrite<=0;
					ALUsrc<=0;
					RegWrite<=1;
			end
			'h8: begin //LW
					RegDst<=0;
					Branch<=0;
					MemRead<=0;
					MemToReg<=1;
					ALUop<=3'b011;
					MemWrite<=0;
					ALUsrc<=1;
					RegWrite<=1;
			end
			'hA: begin //SW
					RegDst<=0;
					Branch<=0;
					MemRead<=0;
					MemToReg<=0;
					ALUop<=3'b011;
					MemWrite<=1;
					ALUsrc<=1;
					RegWrite<=0;
			end
			'hE: begin //BNE
					RegDst<=0;
					Branch<=1;
					MemRead<=0;
					MemToReg<=0;
					ALUop<=3'b000;
					MemWrite<=0;
					ALUsrc<=0;
					RegWrite<=0;
			end
			default: begin
					RegDst<=0;
					Branch<=0;
					MemRead<=0;
					MemToReg<=0;
					ALUop<=3'b000;
					MemWrite<=0;
					ALUsrc<=0;
					RegWrite<=0;
			end
		endcase
	end
endmodule


