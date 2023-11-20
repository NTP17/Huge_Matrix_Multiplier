module reg17 (
	input clk, rstn,
	input [16:0] in,
	output reg [16:0] out
);

	always_ff @ (posedge clk, negedge rstn)
	if (!rstn) out <= 0;
	else out <= in;

endmodule
