module acc32(
	CLOCK,
	RESETL,
	ENABLE,
	IN,
	OUT
);


input wire	CLOCK;
input wire	RESETL;
input wire	ENABLE;
input wire	[21:0] IN;
output wire	[31:0] OUT;

wire	[31:0] acc_wire;
wire	[31:0] sum_wire;

assign	OUT = acc_wire;




adder32	b2v_inst(
	.D(acc_wire),
	.E(IN),
	.F(sum_wire));


reg32	b2v_inst1(
	.clk(CLOCK),
	.rstn(RESETL),
	.en(ENABLE),
	.in(sum_wire),
	.out(acc_wire));


endmodule
