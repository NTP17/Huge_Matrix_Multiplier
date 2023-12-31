module counter_for_A (
	input clk, reset,
	output reg [13:0] Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10, Q11, Q12, Q13, Q14, Q15, Q16, Q17, Q18, Q19, Q20, Q21, Q22, Q23, Q24, Q25, Q26, Q27, Q28, Q29, Q30, Q31,
	output reg [9:0] counter_out,
	output reg done_n
);

	always_ff @ (negedge clk, negedge reset)
	if (!reset) begin
		counter_out <= 0;
		Q0  <= 14'd0;
		Q1  <= 14'd1;
		Q2  <= 14'd2;
		Q3  <= 14'd3;
		Q4  <= 14'd4;
		Q5  <= 14'd5;
		Q6  <= 14'd6;
		Q7  <= 14'd7;
		Q8  <= 14'd8;
		Q9  <= 14'd9;
		Q10 <= 14'd10;
		Q11 <= 14'd11;
		Q12 <= 14'd12;
		Q13 <= 14'd13;
		Q14 <= 14'd14;
		Q15 <= 14'd15;
		Q16 <= 14'd16;
		Q17 <= 14'd17;
		Q18 <= 14'd18;
		Q19 <= 14'd19;
		Q20 <= 14'd20;
		Q21 <= 14'd21;
		Q22 <= 14'd22;
		Q23 <= 14'd23;
		Q24 <= 14'd24;
		Q25 <= 14'd25;
		Q26 <= 14'd26;
		Q27 <= 14'd27;
		Q28 <= 14'd28;
		Q29 <= 14'd29;
		Q30 <= 14'd30;
		Q31 <= 14'd31;
		done_n <= 1'b1;
	end
	else if (counter_out == 10'h201) begin
		counter_out <= counter_out + 1;
		done_n <= 1'b0;
	end
	else if (counter_out == 10'h202) done_n <= 1'b0;
	else begin
		counter_out <= counter_out + 1;
		Q0  <= Q0  + 6'd32;
		Q1  <= Q1  + 6'd32;
		Q2  <= Q2  + 6'd32;
		Q3  <= Q3  + 6'd32;
		Q4  <= Q4  + 6'd32;
		Q5  <= Q5  + 6'd32;
		Q6  <= Q6  + 6'd32;
		Q7  <= Q7  + 6'd32;
		Q8  <= Q8  + 6'd32;
		Q9  <= Q9  + 6'd32;
		Q10 <= Q10 + 6'd32;
		Q11 <= Q11 + 6'd32;
		Q12 <= Q12 + 6'd32;
		Q13 <= Q13 + 6'd32;
		Q14 <= Q14 + 6'd32;
		Q15 <= Q15 + 6'd32;
		Q16 <= Q16 + 6'd32;
		Q17 <= Q17 + 6'd32;
		Q18 <= Q18 + 6'd32;
		Q19 <= Q19 + 6'd32;
		Q20 <= Q20 + 6'd32;
		Q21 <= Q21 + 6'd32;
		Q22 <= Q22 + 6'd32;
		Q23 <= Q23 + 6'd32;
		Q24 <= Q24 + 6'd32;
		Q25 <= Q25 + 6'd32;
		Q26 <= Q26 + 6'd32;
		Q27 <= Q27 + 6'd32;
		Q28 <= Q28 + 6'd32;
		Q29 <= Q29 + 6'd32;
		Q30 <= Q30 + 6'd32;
		Q31 <= Q31 + 6'd32;
		done_n <= 1'b1;
	end

endmodule