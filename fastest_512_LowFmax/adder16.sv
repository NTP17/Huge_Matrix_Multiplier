module adder16 (
	input [15:0] D, E,
	output [16:0] F
);

	assign F = E + D;

endmodule