module mux_4to1(
	output out,
	input in3,
	input in2,
	input in1,
	input in0,
	input [1:0] sel
	);
	

wire mux_o1;
wire mux_o2;

mux_2to1 mux1(.out(mux_o1), .in0(in0), .in1(in1), .sel(sel[0]));
mux_2to1 mux2(.out(mux_o2), .in0(in2), .in1(in3), .sel(sel[0]));
mux_2to1 muxRes(.out(out), .in0(mux_o1), .in1(mux_o2), .sel(sel[1]));
	
endmodule
