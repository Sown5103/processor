`timescale 1ns/1ps
module processor_tb;
	reg [31:0] Inst;
	reg clk, reset;
	wire isZero;
	wire [31:0] WD;
processor uut(
			.Inst(Inst),
			.clk(clk),
			.reset(reset),
			.isZero(isZero),
			.WD(WD)
			);
			
initial 
begin
	#200 $stop;
end
	
initial
begin 
	Inst = 32'b000001_00010_00011_00001_00000100000; // add
	//Inst = 32'b000011_00010_00011_00001_00000100000; // sub
	//Inst = 32'b000101_00010_00011_00001_00000100000; // and
	//Inst = 32'b000110_00010_00011_00001_00000100000; // or
	//Inst = 32'b000010_00010_00001_0000000000000000; // lw
	//Inst = 32'b000100_00010_00001_0000000000000000; // sw
	clk = 0;
	reset = 0;
end
	

	
initial
begin
	forever
	#20 clk = ~clk;
end
endmodule