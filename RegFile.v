module RegFile(
input rwe, clk, 
input [4:0] wa, ra1, ra2,
input [31:0] wd,
output reg[31:0] rd1, rd2
);
reg [31:0] register_file[31:0]; 
initial begin
register_file[1]=32'd8;
register_file[2]=32'd4;
register_file[3]=32'd3;
end
always @(posedge clk)
begin
	if (rwe) register_file[wa]=wd;
	rd1 = register_file[ra1];
	rd2 = register_file[ra2];
end
 
endmodule