module edge_enforcer(
	clkin,
	reset,
	clkout
);

input wire	clkin, reset;
output wire	clkout;

wire	clk_wire;

DFFF	b2v_inst(
	.d(1'b1),
	.clk(clkin),
	.rstl(reset),
	.q(clk_wire));

assign	clkout = clkin & clk_wire;

endmodule
