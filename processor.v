module processor(
input[31:0] Inst,
input clk, reset,
output isZero,
output [31:0] WD
);
wire RegDst;
wire[1:0] ALUop;
wire[2:0] ALUControl;
wire MemRead;
wire MemWrite;
wire MemToReg;
wire ALUSrc;
wire RegWrite;


controller Ctrl(.opcode(Inst[31:26]),.RegDst(RegDst), .ALUop(ALUop), .MemRead(MemRead),
.MemWrite(MemWrite),.MemToReg(MemToReg),.ALUSrc(ALUSrc),.RegWrite(RegWrite),.reset(reset));
		
ALUCtrl ALUC(.ALUop(ALUop),.ALUControl(ALUControl));
								
datapath Dtph(.Inst(Inst),.RegDst(RegDst),.RegWrite(RegWrite),.ALUSrc(ALUSrc),
.ALUControl(ALUControl),.MemWrite(MemWrite),.MemRead(MemRead), .MemToReg(MemToReg), .clk(clk),.WD(WD));

endmodule