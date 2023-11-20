module counter_for_C (
	input clk, reset,
	output reg [6:0] Q, Qnext,
	output reg done_n
);

	always_ff @ (negedge clk, negedge reset)
	if (!reset) begin
		Q <= 7'd0;
		Qnext <= 7'd1;
		done_n <= 1'b1;
	end
	else if (Qnext == 7'h7f) done_n <= 1'b0;
	else begin
		Q <= Q + 2;
		Qnext <= Qnext + 2;
		done_n <= 1'b1;
	end

endmodule