module romC_128x1_T(
	clk,
	resetn,
	ena,
	adrC,
	adrCnext,
	result
);


input wire	clk;
input wire  resetn;
input wire	ena;
input wire	[6:0] adrC;
input wire	[6:0] adrCnext;
output wire [16:0] result;
wire	[15:0] C;
wire	[15:0] Cnext;

wire	[15:0] C_a;
wire	[15:0] C_b;
wire  [15:0] middlewire;
wire  [15:0] middle_wire;
wire  [16:0] result_mid;





romC_128x1	b2v_inst(
	.clock(clk),
	.address_a(adrC),
	.address_b(adrCnext),
	.q_a(C_a),
	.q_b(C_b));


switch16	b2v_inst1(
	.en(ena),
	.in(C_a),
	.out(middlewire));


switch16	b2v_inst2(
	.en(ena),
	.in(C_b),
	.out(middle_wire));


reg16 timing_optimizer (
	.clk(clk),
	.rstn(resetn),
	.in(middlewire),
	.out(C)
);


reg16 timing_optimize (
	.clk(clk),
	.rstn(resetn),
	.in(middle_wire),
	.out(Cnext)
);

adder16 add (
	.D(C),
	.E(Cnext),
	.F(result_mid)
);

reg17 time_opt (
	.clk(clk),
	.rstn(resetn),
	.in(result_mid),
	.out(result)
);

endmodule
