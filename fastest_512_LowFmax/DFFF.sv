module DFFF (
	input d, clk, rstl, output reg q
);

	always_ff @ (negedge clk, negedge rstl)
	if (!rstl) q <= 0; else q <= d;

endmodule
