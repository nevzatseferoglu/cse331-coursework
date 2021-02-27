module j_jal_mux_input(
	output [31:0] out,
	input [3:0] in1,
	input [25:0] in0
);

or or31(out[31], in1[3], 1'b0);
or or30(out[30], in1[2], 1'b0);
or or29(out[29], in1[1], 1'b0);
or or28(out[28], in1[0], 1'b0);

or or27(out[27], in0[25], 1'b0);
or or26(out[26], in0[24], 1'b0);
or or25(out[25], in0[23], 1'b0);
or or24(out[24], in0[22], 1'b0);
or or23(out[23], in0[21], 1'b0);
or or22(out[22], in0[20], 1'b0);
or or21(out[21], in0[19], 1'b0);
or or20(out[20], in0[18], 1'b0);
or or19(out[19], in0[17], 1'b0);
or or18(out[18], in0[16], 1'b0);
or or17(out[17], in0[15], 1'b0);
or or16(out[16], in0[14], 1'b0);
or or15(out[15], in0[13], 1'b0);
or or14(out[14], in0[12], 1'b0);
or or13(out[13], in0[11], 1'b0);
or or12(out[12], in0[10], 1'b0);
or or11(out[11], in0[9], 1'b0);
or or10(out[10], in0[8], 1'b0);
or or9(out[9], in0[7], 1'b0);
or or8(out[8], in0[6], 1'b0);
or or7(out[7], in0[5], 1'b0);
or or6(out[6], in0[4], 1'b0);
or or5(out[5], in0[3], 1'b0);
or or4(out[4], in0[2], 1'b0);
or or3(out[3], in0[1], 1'b0);
or or2(out[2], in0[0], 1'b0);

or or1(out[1], 1'b0, 1'b0);
or or0(out[0], 1'b0, 1'b0);


endmodule
