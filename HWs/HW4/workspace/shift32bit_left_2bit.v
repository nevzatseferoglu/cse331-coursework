module shift32bit_left_2bit (
	output [31:0] out,
	input [31:0] in
);


or (out[31], in[29], 1'b0);
or (out[30], in[28], 1'b0);
or (out[29], in[27], 1'b0);
or (out[28], in[26], 1'b0);
or (out[27], in[25], 1'b0);
or (out[26], in[24], 1'b0);
or (out[25], in[23], 1'b0);
or (out[24], in[22], 1'b0);
or (out[23], in[21], 1'b0);
or (out[22], in[20], 1'b0);
or (out[21], in[19], 1'b0);
or (out[20], in[18], 1'b0);
or (out[19], in[17], 1'b0);
or (out[18], in[16], 1'b0);
or (out[17], in[15], 1'b0);
or (out[16], in[14], 1'b0);
or (out[15], in[13], 1'b0);
or (out[14], in[12], 1'b0);
or (out[13], in[11], 1'b0);
or (out[12], in[10], 1'b0);
or (out[11], in[9], 1'b0);
or (out[10], in[8], 1'b0);
or (out[9], in[7], 1'b0);
or (out[8], in[6], 1'b0);
or (out[7], in[5], 1'b0);
or (out[6], in[4], 1'b0);
or (out[5], in[3], 1'b0);
or (out[4], in[2], 1'b0);
or (out[3], in[1], 1'b0);
or (out[2], in[0], 1'b0);
or (out[1], 1'b0, 1'b0);
or (out[0], 1'b0, 1'b0);

endmodule
