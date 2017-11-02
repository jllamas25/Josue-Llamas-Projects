`timescale 1ns / 1ps

module DataMemory(dataout, addr, datain, MemWrite, MemRead, clk);
	input  [15:0] 	addr,datain;
	input  MemWrite, MemRead, clk;
	output [15:0]	dataout;
	
	reg [15:0] memory [0:31];
	reg [15:0] datao;

    always @(posedge clk) 
	 begin
        if (MemWrite) begin
            memory[addr] <= datain;
        end
		  if (MemRead) begin
				datao <= memory[addr];
		end

    end
			assign dataout =datao;
endmodule
