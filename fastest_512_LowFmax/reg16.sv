module reg16 (
	input clk, rstn,
	input [15:0] in,
	output reg [15:0] out
);

	always_ff @ (negedge clk, negedge rstn)
	if (!rstn) out <= 0;
	else out <= in;

endmodule
