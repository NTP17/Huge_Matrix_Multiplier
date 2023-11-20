module switch16 (
	input [15:0] in,
	input en,
	output [15:0] out
);

	assign out = in & {en,en,en,en,en,en,en,en,en,en,en,en,en,en,en,en};

endmodule
