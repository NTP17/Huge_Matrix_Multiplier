module reg32 (
	input clk, rstn, en,
	input [31:0] in,
	output reg [31:0] out
);

	always_ff @ (negedge clk, negedge rstn)
	if (!rstn) out <= 0;
	else if (en) out <= in;

endmodule
