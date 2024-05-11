`timescale 1ns / 1ps

module datapath_tb;

reg RegDst, RegWrite, ALUSrc, MemWrite, MemToReg, MemRead, clk;
reg [2:0] ALUControl;
reg [25:0] Inst;
wire [31:0] WD;

datapath dut (
  .RegDst(RegDst),
  .RegWrite(RegWrite),
  .ALUSrc(ALUSrc),
  .MemWrite(MemWrite),
  .MemToReg(MemToReg),
  .MemRead(MemRead),
  .clk(clk),
  .ALUControl(ALUControl),
  .Inst(Inst),
  .WD(WD)
 
);

initial begin
  // Test case 1: add $1,$2,$3
  RegDst = 1;
  RegWrite = 1;
  ALUSrc = 0;
  MemWrite = 0;
  MemToReg = 1;
  MemRead = 0;
  clk = 0;
  ALUControl = 3'b101; // 
  Inst = 26'b00010000110000100000100000; // instruction value
  #10;
  Inst = 26'b00001000000000000000000000; //read data from $1 to check the result
  #10;
  
  // Test case 2: lw $1,0,$2
  RegDst = 0;
  RegWrite = 1;
  ALUSrc = 1;
  MemWrite = 0;
  MemToReg = 0;
  MemRead = 1;
  clk = 0;
  ALUControl = 3'b101; // 
  Inst = 26'b00010000010000000000000000; // Set your desired instruction value
  #10;
  Inst = 26'b00001000000000000000000000; //read data from $1 to check the result
  #10;
  // Test case 3: sw $1,0,$2
  RegDst = 0;//don't care because not write
  RegWrite = 0;
  ALUSrc = 1;
  MemWrite = 1;
  MemToReg = 0;//don't care
  MemRead = 0;
  clk = 0;
  ALUControl = 3'b101; // Set your desired ALU control value
  Inst = 26'b00010000010000000000000000; // Set your desired instruction value
  #10;
  MemRead = 1;
  MemWrite = 0;
  #10;
  $stop;
end

always #2 clk = ~clk;

endmodule
