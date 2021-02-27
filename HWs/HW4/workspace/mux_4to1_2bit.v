module mux_4to1_2bit(
	output [1:0] out,
	input [1:0] in3,
	input [1:0] in2,
	input [1:0] in1,
	input [1:0] in0,
	input [1:0] sel
	);

wire outH;
wire outL;

mux_4to1 mux1(
	.out(outH), 
	.in0(in0[1]), 
	.in1(in1[1]), 
	.in2(in2[1]),
	.in3(in3[1]),
	.sel(sel)
	);
	
mux_4to1 mux2(
	.out(outL), 
	.in0(in0[0]), 
	.in1(in1[0]), 
	.in2(in2[0]),
	.in3(in3[0]),
	.sel(sel)
	);


or bitH(out[1], outH, 1'b0);
or bitL(out[0], outL, 1'b0);


endmodule
