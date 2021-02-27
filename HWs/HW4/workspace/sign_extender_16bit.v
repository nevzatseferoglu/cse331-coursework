module sign_extender_16bit (
	output [31:0] out,
	input [15:0] in
	);


wire sign_bit;
or det_sign_bit(sign_bit, in[15], 1'b0);

or bit31(out[31], sign_bit, 1'b0);
or bit30(out[30], sign_bit, 1'b0);
or bit29(out[29], sign_bit, 1'b0);
or bit28(out[28], sign_bit, 1'b0);
or bit27(out[27], sign_bit, 1'b0);
or bit26(out[26], sign_bit, 1'b0);
or bit25(out[25], sign_bit, 1'b0);
or bit24(out[24], sign_bit, 1'b0);
or bit23(out[23], sign_bit, 1'b0);
or bit22(out[22], sign_bit, 1'b0);
or bit21(out[21], sign_bit, 1'b0);
or bit20(out[20], sign_bit, 1'b0);
or bit19(out[19], sign_bit, 1'b0);
or bit18(out[18], sign_bit, 1'b0);
or bit17(out[17], sign_bit, 1'b0);
or bit16(out[16], sign_bit, 1'b0);
or bit15(out[15], sign_bit, 1'b0);
or bit14(out[14], in[14], 1'b0);
or bit13(out[13], in[13], 1'b0);
or bit12(out[12], in[12], 1'b0);
or bit11(out[11], in[11], 1'b0);
or bit10(out[10], in[10], 1'b0);
or bit9(out[9], in[9], 1'b0);
or bit8(out[8], in[8], 1'b0);
or bit7(out[7], in[7], 1'b0);
or bit6(out[6], in[6], 1'b0);
or bit5(out[5], in[5], 1'b0);
or bit4(out[4], in[4], 1'b0);
or bit3(out[3], in[3], 1'b0);
or bit2(out[2], in[2], 1'b0);
or bit1(out[1], in[1], 1'b0);
or bit0(out[0], in[0], 1'b0);


endmodule
