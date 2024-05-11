module ALUCtrl_tb;

reg[1:0] ALUop;
wire[2:0] ALUControl;

 ALUCtrl uut (
    .ALUop(ALUop),
    .ALUControl(ALUControl)
);


	initial begin

	 ALUop = 0;
    #10; 
    ALUop = 1;
    #10;
    ALUop = 2;
    #10;
    ALUop = 3;
    #10;
    $stop; // Finish simulation
	end
endmodule
