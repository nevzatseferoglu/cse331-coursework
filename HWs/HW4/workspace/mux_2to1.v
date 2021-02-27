
module mux_2to1(
	output out,
	input in1,
	input in0,
	input sel
	);


wire f0_out;
wire not_sel;
wire f1_out;

not op0(not_sel, sel);
nand op1(f0_out, in0, not_sel);
nand op2(f1_out, in1, sel);
nand op3(out, f1_out, f0_out);

endmodule
