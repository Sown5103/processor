module controller(
input [5:0] opcode,
input reset,
output reg RegDst, MemRead, MemWrite, MemToReg, ALUSrc, RegWrite,
output reg[1:0] ALUop
);
always @ (*)
if (reset)
begin
	ALUop = 0;
	RegDst = 0;
	MemRead = 0;
	MemWrite = 0;
	MemToReg = 0;
	ALUSrc = 0;
	RegWrite = 0;
end
else
begin
	case (opcode)
	1: // add
	begin
		ALUop = 0;
		RegDst = 1;
		MemRead = 0;
		MemWrite = 0;
		MemToReg = 0;
		ALUSrc = 0;
		RegWrite = 1;
	end
	3: // sub
	begin
		ALUop = 1;
		RegDst = 1;
		MemRead = 0;
		MemWrite = 0;
		MemToReg = 0;
		ALUSrc = 0;
		RegWrite = 1;
	end
	5: // and
	begin
		ALUop = 2;
		RegDst = 1;
		MemRead = 0;
		MemWrite = 0;
		MemToReg = 0;
		ALUSrc = 0;
		RegWrite = 1;
	end
	6: // or
	begin
		ALUop = 3;
		RegDst = 1;
		MemRead = 0;
		MemWrite = 0;
		MemToReg = 0;
		ALUSrc = 0;
		RegWrite = 1;
	end
	2: // lw
	begin
		ALUop = 0;
		RegDst = 0;
		MemRead = 1;
		MemWrite = 0;
		MemToReg = 1;
		ALUSrc = 1;
		RegWrite = 1;
	end
	4: // sw
	begin
		ALUop = 0;
		RegDst = 0;
		MemRead = 0;
		MemWrite = 1;
		MemToReg = 1;
		ALUSrc = 1;
		RegWrite = 0;
	end
	default:
	begin
		ALUop = 0;
		RegDst = 0;
		MemRead = 0;
		MemWrite = 0;
		MemToReg = 0;
		ALUSrc = 0;
		RegWrite = 0;
	end
	endcase
end
endmodule