module adder_subtractor_32bit(
	output [31:0] result,
	output carry_out,
	
	input subt_signal,
	input [31:0] A,
	input [31:0] B
);

wire bit0r,	c0;
wire bit1r,	c1;
wire bit2r,	c2;
wire bit3r,	c3;
wire bit4r,	c4;
wire bit5r,	c5;
wire bit6r,	c6;
wire bit7r,	c7;
wire bit8r,	c8;
wire bit9r,	c9;
wire bit10r, c10;
wire bit11r, c11;
wire bit12r, c12;
wire bit13r, c13;
wire bit14r, c14;
wire bit15r, c15;
wire bit16r, c16;
wire bit17r, c17;
wire bit18r, c18;
wire bit19r, c19;
wire bit20r, c20;
wire bit21r, c21;
wire bit22r, c22;
wire bit23r, c23;
wire bit24r, c24;
wire bit25r, c25;
wire bit26r, c26;
wire bit27r, c27;
wire bit28r, c28;
wire bit29r, c29;
wire bit30r, c30;
wire bit31r;


xor bit0(bit0r, B[0], subt_signal);
full_adder_1bit bit0o(.sum(result[0]), .carry_out(c0), .A(A[0]), .B(bit0r), .carry_in(subt_signal));

xor bit1(bit1r, B[1], subt_signal);
full_adder_1bit bit1o(.sum(result[1]), .carry_out(c1), .A(A[1]), .B(bit1r), .carry_in(c0));

xor bit2(bit2r, B[2], subt_signal);
full_adder_1bit bit2o(.sum(result[2]), .carry_out(c2), .A(A[2]), .B(bit2r), .carry_in(c1));

xor bit3(bit3r, B[3], subt_signal);
full_adder_1bit bit3o(.sum(result[3]), .carry_out(c3), .A(A[3]), .B(bit3r), .carry_in(c2));

xor bit4(bit4r, B[4], subt_signal);
full_adder_1bit bit4o(.sum(result[4]), .carry_out(c4), .A(A[4]), .B(bit4r), .carry_in(c3));

xor bit5(bit5r, B[5], subt_signal);
full_adder_1bit bit5o(.sum(result[5]), .carry_out(c5), .A(A[5]), .B(bit5r), .carry_in(c4));

xor bit6(bit6r, B[6], subt_signal);
full_adder_1bit bit6o(.sum(result[6]), .carry_out(c6), .A(A[6]), .B(bit6r), .carry_in(c5));

xor bit7(bit7r, B[7], subt_signal);
full_adder_1bit bit7o(.sum(result[7]), .carry_out(c7), .A(A[7]), .B(bit7r), .carry_in(c6));

xor bit8(bit8r, B[8], subt_signal);
full_adder_1bit bit8o(.sum(result[8]), .carry_out(c8), .A(A[8]), .B(bit8r), .carry_in(c7));

xor bit9(bit9r, B[9], subt_signal);
full_adder_1bit bit9o(.sum(result[9]), .carry_out(c9), .A(A[9]), .B(bit9r), .carry_in(c8));

xor bit10(bit10r, B[10], subt_signal);
full_adder_1bit bit10o(.sum(result[10]), .carry_out(c10), .A(A[10]), .B(bit10r), .carry_in(c9));

xor bit11(bit11r, B[11], subt_signal);
full_adder_1bit bit11o(.sum(result[11]), .carry_out(c11), .A(A[11]), .B(bit11r), .carry_in(c10));

xor bit12(bit12r, B[12], subt_signal);
full_adder_1bit bit12o(.sum(result[12]), .carry_out(c12), .A(A[12]), .B(bit12r), .carry_in(c11));

xor bit13(bit13r, B[13], subt_signal);
full_adder_1bit bit13o(.sum(result[13]), .carry_out(c13), .A(A[13]), .B(bit13r), .carry_in(c12));

xor bit14(bit14r, B[14], subt_signal);
full_adder_1bit bit14o(.sum(result[14]), .carry_out(c14), .A(A[14]), .B(bit14r), .carry_in(c13));

xor bit15(bit15r, B[15], subt_signal);
full_adder_1bit bit15o(.sum(result[15]), .carry_out(c15), .A(A[15]), .B(bit15r), .carry_in(c14));

xor bit16(bit16r, B[16], subt_signal);
full_adder_1bit bit16o(.sum(result[16]), .carry_out(c16), .A(A[16]), .B(bit16r), .carry_in(c15));

xor bit17(bit17r, B[17], subt_signal);
full_adder_1bit bit17o(.sum(result[17]), .carry_out(c17), .A(A[17]), .B(bit17r), .carry_in(c16));

xor bit18(bit18r, B[18], subt_signal);
full_adder_1bit bit18o(.sum(result[18]), .carry_out(c18), .A(A[18]), .B(bit18r), .carry_in(c17));

xor bit19(bit19r, B[19], subt_signal);
full_adder_1bit bit19o(.sum(result[19]), .carry_out(c19), .A(A[19]), .B(bit19r), .carry_in(c18));

xor bit20(bit20r, B[20], subt_signal);
full_adder_1bit bit20o(.sum(result[20]), .carry_out(c20), .A(A[20]), .B(bit20r), .carry_in(c19));

xor bit21(bit21r, B[21], subt_signal);
full_adder_1bit bit21o(.sum(result[21]), .carry_out(c21), .A(A[21]), .B(bit21r), .carry_in(c20));

xor bit22(bit22r, B[22], subt_signal);
full_adder_1bit bit22o(.sum(result[22]), .carry_out(c22), .A(A[22]), .B(bit22r), .carry_in(c21));

xor bit23(bit23r, B[23], subt_signal);
full_adder_1bit bit23o(.sum(result[23]), .carry_out(c23), .A(A[23]), .B(bit23r), .carry_in(c22));

xor bit24(bit24r, B[24], subt_signal);
full_adder_1bit bit24o(.sum(result[24]), .carry_out(c24), .A(A[24]), .B(bit24r), .carry_in(c23));

xor bit25(bit25r, B[25], subt_signal);
full_adder_1bit bit25o(.sum(result[25]), .carry_out(c25), .A(A[25]), .B(bit25r), .carry_in(c24));

xor bit26(bit26r, B[26], subt_signal);
full_adder_1bit bit26o(.sum(result[26]), .carry_out(c26), .A(A[26]), .B(bit26r), .carry_in(c25));

xor bit27(bit27r, B[27], subt_signal);
full_adder_1bit bit27o(.sum(result[27]), .carry_out(c27), .A(A[27]), .B(bit27r), .carry_in(c26));

xor bit28(bit28r, B[28], subt_signal);
full_adder_1bit bit28o(.sum(result[28]), .carry_out(c28), .A(A[28]), .B(bit28r), .carry_in(c27));

xor bit29(bit29r, B[29], subt_signal);
full_adder_1bit bit29o(.sum(result[29]), .carry_out(c29), .A(A[29]), .B(bit29r), .carry_in(c28));

xor bit30(bit30r, B[30], subt_signal);
full_adder_1bit bit30o(.sum(result[30]), .carry_out(c30), .A(A[30]), .B(bit30r), .carry_in(c29));

xor bit31(bit31r, B[31], subt_signal);
full_adder_1bit bit31o(.sum(result[31]), .carry_out(carry_out), .A(A[31]), .B(bit31r), .carry_in(c30));

endmodule
