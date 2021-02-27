module alu_1bit(
	output co,
	output ri,
	
	input [2:0] aluOp,
	input ci,
	input bi,
	input ai
);

wire xor1r;

wire and1r;
wire and2r;
wire and3r;
wire and4r;

wire or1r;
wire or2r;

wire not1r;
wire not2r;



xor xorOp1(xor1r, bi, aluOp[2]);
and andOp1(and1r, ai, xor1r);
or orOp1(or1r, ai, xor1r);
not notOp1(not1r,and1r);
and andOp2(and2r, not1r, or1r);
and andOp3(and3r, and2r, ci);
or orOp2(or2r, and2r, ci);
not notOp2(not2r, and3r);
or orOp3(co, and3r, and1r);
and andOp4(and4r, not2r, or2r);
	

mux_4to1 op_select(
	.out(ri),
	
	.in3(and2r),
	.in2(and4r),
	.in1(or1r),
	.in0(and1r),
	.sel(aluOp[1:0])
);

endmodule
