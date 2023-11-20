module adder32 (
	input [31:0] D,
	input [21:0] E,
	output [31:0] F
);

	assign F = E + D;

endmodule