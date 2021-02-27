module compare_with_zero_32bit(
	output equal,
	output lessThan,
	
	input [31:0] in
);

wire orBits;

or bits(orBits,
	in[31], in[30], in[29], in[28], in[27], in[26], in[25], in[24],
	in[23], in[22], in[21], in[20], in[19], in[18], in[17], in[16],
	in[15], in[14], in[13], in[12], in[11], in[10], in[9], in[8],
	in[7], in[6], in[5], in[4], in[3], in[2], in[1], in[0]
);


nor is_equal(equal, orBits, 1'b0);
or is_lessThan(lessThan, in[31], 1'b0);


endmodule
