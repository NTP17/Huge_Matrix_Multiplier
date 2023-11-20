module reg18 (
	input clk, rstn,
	input [17:0] in,
	output reg [17:0] out
);

	always_ff @ (negedge clk, negedge rstn)
	if (!rstn) out <= 0;
	else out <= in;

endmodule
