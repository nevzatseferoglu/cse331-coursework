module zero_extender_30bit(
	output [31:0] out,
	input [1:0] in
	);



or bit31(out[31], 1'b0, 1'b0);
or bit30(out[30], 1'b0, 1'b0);
or bit29(out[29], 1'b0, 1'b0);
or bit28(out[28], 1'b0, 1'b0);
or bit27(out[27], 1'b0, 1'b0);
or bit26(out[26], 1'b0, 1'b0);
or bit25(out[25], 1'b0, 1'b0);
or bit24(out[24], 1'b0, 1'b0);
or bit23(out[23], 1'b0, 1'b0);
or bit22(out[22], 1'b0, 1'b0);
or bit21(out[21], 1'b0, 1'b0);
or bit20(out[20], 1'b0, 1'b0);
or bit19(out[19], 1'b0, 1'b0);
or bit18(out[18], 1'b0, 1'b0);
or bit17(out[17], 1'b0, 1'b0);
or bit16(out[16], 1'b0, 1'b0);
or bit15(out[15], 1'b0, 1'b0);
or bit14(out[14], 1'b0, 1'b0);
or bit13(out[13], 1'b0, 1'b0);
or bit12(out[12], 1'b0, 1'b0);
or bit11(out[11], 1'b0, 1'b0);
or bit10(out[10], 1'b0, 1'b0);
or bit9(out[9], 1'b0, 1'b0);
or bit8(out[8], 1'b0, 1'b0);
or bit7(out[7], 1'b0, 1'b0);
or bit6(out[6], 1'b0, 1'b0);
or bit5(out[5], 1'b0, 1'b0);
or bit4(out[4], 1'b0, 1'b0);
or bit3(out[3], 1'b0, 1'b0);
or bit2(out[2], 1'b0, 1'b0);
or bit1(out[1], in[1], 1'b0);
or bit0(out[0], in[0], 1'b0);

endmodule
