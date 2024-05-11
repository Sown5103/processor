`timescale 1ns/1ps
module ALU_testbench;

reg signed [31:0] A;
reg signed [31:0] B;
reg [2:0] s;
 
wire [31:0] result;
wire overflow;

ALU uut(
.A(A),
.B(B),
.s(s),
.result(result),
.overflow(overflow)
);

initial begin
	 // Test case 1: Two's complement inversion (s=000)
    A = 32'h12345678;
    s = 3'b000;
    #10;

    // Test case 2: Bitwise AND (s=001)
    A = 32'hAAAA5555;
    B = 32'hF0F0F0F0;
    s = 3'b001;
    #10;

    // Test case 3: Bitwise XOR (s=010)
    A = 32'h12345678;
    B = 32'h87654321;
    s = 3'b010;
    #10;

    // Test case 4: Bitwise OR (s=011)
    A = 32'hF0F0F0F0;
    B = 32'h0F0F0F0F;
    s = 3'b011;
    #10;

    // Test case 5: Decrement (s=100)
    A = 32'h00000005;
    s = 3'b100;
    #10;

    // Test case 6: Addition (s=101)
    A = 32'h7FFFFFFF;
    B = 32'h00000001;
    s = 3'b101;
    #10;

    // Test case 7: Subtraction (s=110)
    A = 32'h12345678;
    B = 32'h87654321;
    s = 3'b110;
    #10;

    // Test case 8: Increment (s=111)
    A = 32'h7FFFFFFF;
    s = 3'b111;
    #10;
	$stop;
end
endmodule
