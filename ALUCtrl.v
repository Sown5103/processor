module ALUCtrl(ALUop, ALUControl);
input[1:0] ALUop;
output reg[2:0] ALUControl;

always @ (*)
begin
	case (ALUop)
	0: ALUControl = 5;
	1: ALUControl = 6;
	2: ALUControl = 1;
	3: ALUControl = 3;
	default: ALUControl = 0;
	endcase
end
endmodule
