module MUL_BLOCK(
	clk,
	resetn,
	adrA,
	adrAnext,
	adrB,
	adrBnext,
	result
);


input wire	clk;
input wire  resetn;
input wire	[13:0] adrA;
input wire	[13:0] adrAnext;
input wire	[6:0] adrB;
input wire	[6:0] adrBnext;
output wire	[16:0] result;


wire  [16:0] result_mid;
wire	[15:0] inter_wire;
wire	[15:0] interwire;
wire  [15:0] middlewire;
wire  [15:0] middle_wire;
wire	[7:0] addrAnext;
wire	[7:0] addrBnext;
wire	[7:0] addrA;
wire	[7:0] addrB;


romA_128x128	b2v_inst5(
	.clock(clk),
	.address_a(adrA),
	.address_b(adrAnext),
	.q_a(addrA),
	.q_b(addrAnext));


romB_128x1	b2v_inst6(
	.clock(clk),
	.address_a(adrB),
	.address_b(adrBnext),
	.q_a(addrB),
	.q_b(addrBnext));


multiplier_8816	b2v_inst10(
	.dataa(addrAnext),
	.datab(addrBnext),
	.result(middle_wire));


reg16 timing_optimizer (
	.clk(clk),
	.rstn(resetn),
	.in(middlewire),
	.out(interwire)
);


reg16 timing_optimize (
	.clk(clk),
	.rstn(resetn),
	.in(middle_wire),
	.out(inter_wire)
);


adder16	b2v_inst8(
	.D(interwire),
	.E(inter_wire),
	.F(result_mid));


multiplier_8816	b2v_inst9(
	.dataa(addrA),
	.datab(addrB),
	.result(middlewire));


reg17 time_opt (
	.clk(clk),
	.rstn(resetn),
	.in(result_mid),
	.out(result)
);


endmodule
