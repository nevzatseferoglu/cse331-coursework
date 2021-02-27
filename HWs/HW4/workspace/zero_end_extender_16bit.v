module zero_end_extender_16bit (
	output [31:0] out,
	input [15:0] in
);


or or0(out[0], 1'b0, 1'b0);
or or1(out[1], 1'b0, 1'b0);
or or2(out[2], 1'b0, 1'b0);
or or3(out[3], 1'b0, 1'b0);
or or4(out[4], 1'b0, 1'b0);
or or5(out[5], 1'b0, 1'b0);
or or6(out[6], 1'b0, 1'b0);
or or7(out[7], 1'b0, 1'b0);
or or8(out[8], 1'b0, 1'b0);
or or9(out[9], 1'b0, 1'b0);
or or10(out[10], 1'b0, 1'b0);
or or11(out[11], 1'b0, 1'b0);
or or12(out[12], 1'b0, 1'b0);
or or13(out[13], 1'b0, 1'b0);
or or14(out[14], 1'b0, 1'b0);
or or15(out[15], 1'b0, 1'b0);

or or16(out[16], in[0], 1'b0);
or or17(out[17], in[1], 1'b0);
or or18(out[18], in[2], 1'b0);
or or19(out[19], in[3], 1'b0);
or or20(out[20], in[4], 1'b0);
or or21(out[21], in[5], 1'b0);
or or22(out[22], in[6], 1'b0);
or or23(out[23], in[7], 1'b0);
or or24(out[24], in[8], 1'b0);
or or25(out[25], in[9], 1'b0);
or or26(out[26], in[10], 1'b0);
or or27(out[27], in[11], 1'b0);
or or28(out[28], in[12], 1'b0);
or or29(out[29], in[13], 1'b0);
or or30(out[30], in[14], 1'b0);
or or31(out[31], in[15], 1'b0);



endmodule
