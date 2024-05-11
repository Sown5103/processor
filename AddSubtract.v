module AddSubtract (
  input [31:0] A,
  input [31:0] B,
  input subtract,
  output reg [31:0] result,
  output reg overflow
);

  always @* begin
    if (subtract) begin
      result = A - B;
      overflow = (A[31] == 1 && B[31] == 0 && result[31] == 0) || (A[31] == 0 && B[31] == 1 && result[31] == 1);
    end
    else begin
      result = A + B;
      overflow = (A[31] == 0 && B[31] == 0 && result[31] == 1) || (A[31] == 1 && B[31] == 1 && result[31] == 0);
    end
  end

endmodule