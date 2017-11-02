`timescale 1ns / 1ps

module RegFile(A, B, C, Aaddr, Baddr, Caddr, Load,nClear,clk);

	output [15:0] A,B; // read data out reg 1 and 2
    input [15:0] C;// data in
    input [3:0] Aaddr, Baddr,Caddr;
    input Load;
    input nClear;
    input clk;
	 
	 reg [3:0] ra1,ra2;
	 // memory 
	 reg [15:0] Mem[0:1 << 3]; 
 //write logic 
always@(posedge clk) begin
    if(Load == 1) begin
        
        Mem[Caddr] <= C;
    end
    ra1 <= Aaddr;
    ra2 <= Baddr;
	 // clear logic
	if (nClear == 1) begin
		Mem[ra1] <= 'h0000;
		Mem[ra2] <= 'h0000;
		Mem[Caddr] <= 'h0000;
		end
end
	assign A = Mem[ra1];
	assign B = Mem[ra2];
endmodule
