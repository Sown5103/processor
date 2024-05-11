module sram(
input re, we, clk, 
input [31:0] a,
input [31:0] wd,
output reg [31:0] rd
);
reg [31:0] sram[32:0];
initial begin
sram[4]=9;
end
always @(posedge clk)
begin
	if (we&&!re) 
	begin
		sram[a]=wd;
		rd=32'bz;
	end
	else if(re&&!we)
	begin 
		rd=sram[a];
	end
	else rd=32'bz;
end
endmodule