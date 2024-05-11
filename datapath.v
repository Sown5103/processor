module datapath(
input RegDst, RegWrite, ALUSrc, MemWrite, MemToReg, MemRead, clk,
input [2:0]ALUControl,
input [25:0] Inst,
output [31:0] WD
); 
wire [4:0] WR;
wire[31:0] extended, ALUResult, RD2, B, ReadData, RD1;

Mux21_5 Mux1(.select(RegDst),.data0(Inst[20:16]),.data1(Inst[15:11]),.output_data(WR));
RegFile RegisterFile(.rwe(RegWrite),.ra1(Inst[25:21]),.ra2(Inst[20:16]),.wa(WR),.wd(WD),.rd1(RD1),.rd2(RD2),.clk(clk));
signextend SignExtend(.in(Inst[15:0]),.out(extended));
Mux21_32 Mux2(.select(ALUSrc),.data0(RD2),.data1(extended),.output_data(B));
ALU ALU(.A(RD1),.B(B),.s(ALUControl),.result(ALUResult));
sram DataMemory(.re(MemRead),.we(MemWrite),.a(ALUResult),.wd(RD2),.rd(ReadData),.clk(clk));
Mux21_32 Mux3(.select(MemToReg),.data0(ALUResult),.data1(ReadData),.output_data(WD));

endmodule