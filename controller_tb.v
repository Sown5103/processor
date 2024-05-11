`timescale 1ns/1ps
module controller_tb();
reg [5:0] opcode;
reg reset;
wire RegDst, MemRead, MemWrite, MemToReg, ALUSrc, RegWrite;
wire[1:0] ALUop;

controller uut(
					.opcode(opcode), 
					.RegDst(RegDst), 
					.ALUop(ALUop), 
					.MemRead(MemRead), 
					.MemWrite(MemWrite), 
					.MemToReg(MemToReg), 
					.ALUSrc(ALUSrc), 
					.RegWrite(RegWrite), 
					.reset(reset)
					);
					
initial 
begin
	#100 $stop;
end
initial
begin
	reset = 0;
	#10
	opcode = 1;
	#10
	opcode = 2;
	#10
	opcode = 3;
	#10
	opcode = 4;
	#10
	opcode = 5;
	#10
	opcode = 6;
end

endmodule

