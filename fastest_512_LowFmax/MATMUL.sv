module MATMUL(

	//////////// CLOCK //////////
	input 		          		CLOCK_50,

	//////////// KEY //////////
	input 		     [3:0]		KEY,

	//////////// SW //////////
	input 		     [9:0]		SW,

	//////////// Seg7 //////////
	output		     [6:0]		HEX0,
	output		     [6:0]		HEX1,
	output		     [6:0]		HEX2,
	output		     [6:0]		HEX3,
	output		     [6:0]		HEX4,
	output		     [6:0]		HEX5
);

	LABTWO main(
		.CLK(CLOCK_50),
		.SEL(SW[0]),
		.RSTN(KEY[0]),
		.DISP0(HEX0),
		.DISP1(HEX1),
		.DISP2(HEX2),
		.DISP3(HEX3),
		.DISP4(HEX4),
		.DISP5(HEX5)
	);

endmodule
