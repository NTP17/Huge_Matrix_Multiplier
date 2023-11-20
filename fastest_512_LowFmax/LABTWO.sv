module LABTWO(
	SEL,
	CLK,
	RSTN,
	DISP0,
	DISP1,
	DISP2,
	DISP3,
	DISP4,
	DISP5,
	clkcount,
	result,
	done_L
);


input wire	SEL;
input wire	CLK;
input wire	RSTN;
output wire	[6:0] DISP0;
output wire	[6:0] DISP1;
output wire	[6:0] DISP2;
output wire	[6:0] DISP3;
output wire	[6:0] DISP4;
output wire	[6:0] DISP5;
output wire	[9:0] clkcount;
output wire	[31:0] result;
output wire done_L;


wire  [17:0] AB_mid;
wire  [17:0] AB_mid2;
wire  [17:0] AB_mid3;
wire  [17:0] AB_mid4;
wire  [17:0] AB_mid5;
wire  [17:0] AB_mid6;
wire  [17:0] AB_mid7;
wire  [17:0] AB_mid8;
wire  [16:0] C_mid;
wire	[17:0] AB;
wire	[17:0] AB2;
wire	[17:0] AB3;
wire	[17:0] AB4;
wire	[17:0] AB5;
wire	[17:0] AB6;
wire	[17:0] AB7;
wire	[17:0] AB8;
wire	[16:0] C;
wire	clkwire;
wire	[13:0] addrA0;
wire	[13:0] addrA1;
wire	[13:0] addrA2;
wire	[13:0] addrA3;
wire	[13:0] addrA4;
wire	[13:0] addrA5;
wire	[13:0] addrA6;
wire	[13:0] addrA7;
wire	[13:0] addrA8;
wire	[13:0] addrA9;
wire	[13:0] addrA10;
wire	[13:0] addrA11;
wire	[13:0] addrA12;
wire	[13:0] addrA13;
wire	[13:0] addrA14;
wire	[13:0] addrA15;
wire	[13:0] addrA16;
wire	[13:0] addrA17;
wire	[13:0] addrA18;
wire	[13:0] addrA19;
wire	[13:0] addrA20;
wire	[13:0] addrA21;
wire	[13:0] addrA22;
wire	[13:0] addrA23;
wire	[13:0] addrA24;
wire	[13:0] addrA25;
wire	[13:0] addrA26;
wire	[13:0] addrA27;
wire	[13:0] addrA28;
wire	[13:0] addrA29;
wire	[13:0] addrA30;
wire	[13:0] addrA31;
wire	[16:0] matAB01;
wire	[16:0] matAB23;
wire	[16:0] matAB45;
wire	[16:0] matAB67;
wire	[16:0] matAB89;
wire	[16:0] matABab;
wire	[16:0] matABcd;
wire	[16:0] matABef;
wire	[16:0] matABgh;
wire	[16:0] matABij;
wire	[16:0] matABkl;
wire	[16:0] matABmn;
wire	[16:0] matABop;
wire	[16:0] matABqr;
wire	[16:0] matABst;
wire	[16:0] matABuv;
wire	done_switch;
wire	[21:0] result_wire;
wire  [21:0] result_mid;
wire	[6:0] addrB0;
wire	[6:0] addrB1;
wire	[6:0] addrB2;
wire	[6:0] addrB3;
wire	[6:0] addrB4;
wire	[6:0] addrB5;
wire	[6:0] addrB6;
wire	[6:0] addrB7;
wire	[6:0] addrB8;
wire	[6:0] addrB9;
wire	[6:0] addrB10;
wire	[6:0] addrB11;
wire	[6:0] addrB12;
wire	[6:0] addrB13;
wire	[6:0] addrB14;
wire	[6:0] addrB15;
wire	[6:0] addrB16;
wire	[6:0] addrB17;
wire	[6:0] addrB18;
wire	[6:0] addrB19;
wire	[6:0] addrB20;
wire	[6:0] addrB21;
wire	[6:0] addrB22;
wire	[6:0] addrB23;
wire	[6:0] addrB24;
wire	[6:0] addrB25;
wire	[6:0] addrB26;
wire	[6:0] addrB27;
wire	[6:0] addrB28;
wire	[6:0] addrB29;
wire	[6:0] addrB30;
wire	[6:0] addrB31;
wire	done_C;
wire	[6:0] addrC;
wire	[6:0] addrCnext;


assign done_L = done_switch;


edge_enforcer	b2v_inst(
	.clkin(CLK),
	.reset(RSTN),
	.clkout(clkwire));


adder17	b2v_inst12(
	.D(matAB01),
	.E(matAB23),
	.F(AB_mid));


adder17	for_extend(
	.D(matAB45),
	.E(matAB67),
	.F(AB_mid2));


adder17	for_extend2(
	.D(matAB89),
	.E(matABab),
	.F(AB_mid3));


adder17	for_extend3(
	.D(matABcd),
	.E(matABef),
	.F(AB_mid4));


adder17	for_extend4(
	.D(matABgh),
	.E(matABij),
	.F(AB_mid5));


adder17	for_extend5(
	.D(matABkl),
	.E(matABmn),
	.F(AB_mid6));


adder17	for_extend6(
	.D(matABop),
	.E(matABqr),
	.F(AB_mid7));


adder17	for_extend7(
	.D(matABst),
	.E(matABuv),
	.F(AB_mid8));


acc32	b2v_inst13(
	.CLOCK(clkwire),
	.RESETL(RSTN),
	.ENABLE(done_switch),
	.IN(result_wire),
	.OUT(result));


adder18	b2v_inst14(
	.data0x({1'b0,C}),
	.data1x(AB),
	.data2x(AB2),
	.data3x(AB3),
	.data4x(AB4),
	.data5x(AB5),
	.data6x(AB6),
	.data7x(AB7),
	.data8x(AB8),
	.result(result_mid));


reg17 optimizerC (
	.clk(!clkwire),
	.rstn(RSTN),
	.in(C_mid),
	.out(C)
);

reg18 optimizerAB (
	.clk(clkwire),
	.rstn(RSTN),
	.in(AB_mid),
	.out(AB)
);


reg18 optimizerAB2 (
	.clk(clkwire),
	.rstn(RSTN),
	.in(AB_mid2),
	.out(AB2)
);


reg18 optimizerAB3 (
	.clk(clkwire),
	.rstn(RSTN),
	.in(AB_mid3),
	.out(AB3)
);


reg18 optimizerAB4 (
	.clk(clkwire),
	.rstn(RSTN),
	.in(AB_mid4),
	.out(AB4)
);


reg18 optimizerAB5 (
	.clk(clkwire),
	.rstn(RSTN),
	.in(AB_mid5),
	.out(AB5)
);


reg18 optimizerAB6 (
	.clk(clkwire),
	.rstn(RSTN),
	.in(AB_mid6),
	.out(AB6)
);


reg18 optimizerAB7 (
	.clk(clkwire),
	.rstn(RSTN),
	.in(AB_mid7),
	.out(AB7)
);


reg18 optimizerAB8 (
	.clk(clkwire),
	.rstn(RSTN),
	.in(AB_mid8),
	.out(AB8)
);


reg19 optimizerABC (
	.clk(clkwire),
	.rstn(RSTN),
	.in(result_mid),
	.out(result_wire)
);

MUL_BLOCK	b2v_inst1(
	.clk(clkwire),
	.resetn(RSTN),
	.adrA(addrA0),
	.adrAnext(addrA1),
	.adrB(addrB0),
	.adrBnext(addrB1),
	.result(matAB01));


MUL_BLOCK	b2v_inst2(
	.clk(clkwire),
	.resetn(RSTN),
	.adrA(addrA2),
	.adrAnext(addrA3),
	.adrB(addrB2),
	.adrBnext(addrB3),
	.result(matAB23));


MUL_BLOCK	extend0(
	.clk(clkwire),
	.resetn(RSTN),
	.adrA(addrA4),
	.adrAnext(addrA5),
	.adrB(addrB4),
	.adrBnext(addrB5),
	.result(matAB45));


MUL_BLOCK	extend1(
	.clk(clkwire),
	.resetn(RSTN),
	.adrA(addrA6),
	.adrAnext(addrA7),
	.adrB(addrB6),
	.adrBnext(addrB7),
	.result(matAB67));


MUL_BLOCK	extend2(
	.clk(clkwire),
	.resetn(RSTN),
	.adrA(addrA8),
	.adrAnext(addrA9),
	.adrB(addrB8),
	.adrBnext(addrB9),
	.result(matAB89));


MUL_BLOCK	extend3(
	.clk(clkwire),
	.resetn(RSTN),
	.adrA(addrA10),
	.adrAnext(addrA11),
	.adrB(addrB10),
	.adrBnext(addrB11),
	.result(matABab));


MUL_BLOCK	extend4(
	.clk(clkwire),
	.resetn(RSTN),
	.adrA(addrA12),
	.adrAnext(addrA13),
	.adrB(addrB12),
	.adrBnext(addrB13),
	.result(matABcd));


MUL_BLOCK	extend5(
	.clk(clkwire),
	.resetn(RSTN),
	.adrA(addrA14),
	.adrAnext(addrA15),
	.adrB(addrB14),
	.adrBnext(addrB15),
	.result(matABef));


MUL_BLOCK	extend6(
	.clk(clkwire),
	.resetn(RSTN),
	.adrA(addrA16),
	.adrAnext(addrA17),
	.adrB(addrB16),
	.adrBnext(addrB17),
	.result(matABgh));


MUL_BLOCK	extend7(
	.clk(clkwire),
	.resetn(RSTN),
	.adrA(addrA18),
	.adrAnext(addrA19),
	.adrB(addrB18),
	.adrBnext(addrB19),
	.result(matABij));


MUL_BLOCK	extend8(
	.clk(clkwire),
	.resetn(RSTN),
	.adrA(addrA20),
	.adrAnext(addrA21),
	.adrB(addrB20),
	.adrBnext(addrB21),
	.result(matABkl));


MUL_BLOCK	extend9(
	.clk(clkwire),
	.resetn(RSTN),
	.adrA(addrA22),
	.adrAnext(addrA23),
	.adrB(addrB22),
	.adrBnext(addrB23),
	.result(matABmn));


MUL_BLOCK	extend10(
	.clk(clkwire),
	.resetn(RSTN),
	.adrA(addrA24),
	.adrAnext(addrA25),
	.adrB(addrB24),
	.adrBnext(addrB25),
	.result(matABop));


MUL_BLOCK	extend11(
	.clk(clkwire),
	.resetn(RSTN),
	.adrA(addrA26),
	.adrAnext(addrA27),
	.adrB(addrB26),
	.adrBnext(addrB27),
	.result(matABqr));


MUL_BLOCK	extend12(
	.clk(clkwire),
	.resetn(RSTN),
	.adrA(addrA28),
	.adrAnext(addrA29),
	.adrB(addrB28),
	.adrBnext(addrB29),
	.result(matABst));


MUL_BLOCK	extend13(
	.clk(clkwire),
	.resetn(RSTN),
	.adrA(addrA30),
	.adrAnext(addrA31),
	.adrB(addrB30),
	.adrBnext(addrB31),
	.result(matABuv));


romC_128x1_T	b2v_inst3(
	.clk(clkwire),
	.resetn(RSTN),
	.ena(done_C),
	.adrC(addrC),
	.adrCnext(addrCnext),
	.result(C_mid));


counter_for_C	b2v_inst4(
	.clk(clkwire),
	.reset(RSTN),
	.done_n(done_C),
	.Q(addrC),
	.Qnext(addrCnext));


counter_for_B	b2v_inst5(
	.clk(clkwire),
	.reset(RSTN),
	.Q0(addrB0),
	.Q1(addrB1),
	.Q2(addrB2),
	.Q3(addrB3),
	.Q4(addrB4),
	.Q5(addrB5),
	.Q6(addrB6),
	.Q7(addrB7),
	.Q8(addrB8),
	.Q9(addrB9),
	.Q10(addrB10),
	.Q11(addrB11),
	.Q12(addrB12),
	.Q13(addrB13),
	.Q14(addrB14),
	.Q15(addrB15),
	.Q16(addrB16),
	.Q17(addrB17),
	.Q18(addrB18),
	.Q19(addrB19),
	.Q20(addrB20),
	.Q21(addrB21),
	.Q22(addrB22),
	.Q23(addrB23),
	.Q24(addrB24),
	.Q25(addrB25),
	.Q26(addrB26),
	.Q27(addrB27),
	.Q28(addrB28),
	.Q29(addrB29),
	.Q30(addrB30),
	.Q31(addrB31));


counter_for_A	b2v_inst6(
	.clk(clkwire),
	.reset(RSTN),
	.done_n(done_switch),
	.counter_out(clkcount),
	.Q0(addrA0),
	.Q1(addrA1),
	.Q2(addrA2),
	.Q3(addrA3),
	.Q4(addrA4),
	.Q5(addrA5),
	.Q6(addrA6),
	.Q7(addrA7),
	.Q8(addrA8),
	.Q9(addrA9),
	.Q10(addrA10),
	.Q11(addrA11),
	.Q12(addrA12),
	.Q13(addrA13),
	.Q14(addrA14),
	.Q15(addrA15),
	.Q16(addrA16),
	.Q17(addrA17),
	.Q18(addrA18),
	.Q19(addrA19),
	.Q20(addrA20),
	.Q21(addrA21),
	.Q22(addrA22),
	.Q23(addrA23),
	.Q24(addrA24),
	.Q25(addrA25),
	.Q26(addrA26),
	.Q27(addrA27),
	.Q28(addrA28),
	.Q29(addrA29),
	.Q30(addrA30),
	.Q31(addrA31));





segssel	b2v_inst22(
	.select(SEL),
	.HEX0a(result[3:0]),
	.HEX0b(clkcount[3:0]),
	.HEX1a(result[7:4]),
	.HEX1b(clkcount[7:4]),
	.HEX2a(result[11:8]),
	.HEX2b({2'b0,clkcount[9:8]}),
	.HEX3a(result[15:12]),
	.HEX3b(4'b0),
	.HEX4a(result[19:16]),
	.HEX4b(4'b0),
	.HEX5a(result[23:20]),
	.HEX5b(4'b0),
	.SEG0(DISP0),
	.SEG1(DISP1),
	.SEG2(DISP2),
	.SEG3(DISP3),
	.SEG4(DISP4),
	.SEG5(DISP5));


endmodule
