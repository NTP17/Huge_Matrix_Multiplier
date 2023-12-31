module reg19 (
	input clk, rstn,
	input [21:0] in,
	output reg [21:0] out
);

	always_ff @ (posedge clk, negedge rstn)
	if (!rstn) out <= 0;
	else out <= in;

endmodule
