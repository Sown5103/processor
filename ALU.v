module ALU (
  input signed [31:0] A,
  input signed [31:0] B,
  input [2:0]s,
  output reg signed [31:0] result,
  output reg overflow
);
  always @(*) begin
		case (s)
		3'b000: result=~A;
		3'b001: result = A & B;
		3'b010: result = A ^ B;
		3'b011: result = A | B;
		3'b100: begin 
				result = A - 1;
				overflow = (A[31] == 1 && result[31] == 0);
			end
		3'b101: begin
				result = A + B;
				overflow = (A[31] == 0 && B[31] == 0 && 
				result[31] == 1) || (A[31] == 1 && B[31] == 1 
				&& result[31] == 0);
			end
		3'b110: begin
				result = A - B;
				overflow = (A[31] == 1 && B[31] == 0 && 
				result[31] == 0) || (A[31] == 0 && B[31] == 1 
				&& result[31] == 1);
			end
		3'b111:	begin 
				result = A + 1;
				overflow = (A[31] == 0 && result[31] == 1);
			end
		endcase
  end
endmodule

