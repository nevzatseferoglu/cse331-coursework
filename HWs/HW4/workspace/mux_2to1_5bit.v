
module mux_2to1_5bit (
	output [4:0] out,
	input [4:0] in1,
	input [4:0] in0,
	input	sel
);

mux_2to1 bit4(.out(out[4]), .in1(in1[4]), .in0(in0[4]), .sel(sel));
mux_2to1 bit3(.out(out[3]), .in1(in1[3]), .in0(in0[3]), .sel(sel));
mux_2to1 bit2(.out(out[2]), .in1(in1[2]), .in0(in0[2]), .sel(sel));
mux_2to1 bit1(.out(out[1]), .in1(in1[1]), .in0(in0[1]), .sel(sel));
mux_2to1 bit0(.out(out[0]), .in1(in1[0]), .in0(in0[0]), .sel(sel));

endmodule
