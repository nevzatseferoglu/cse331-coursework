module mux_2to1_32bit(
	output [31:0] out,
	input [31:0] in1,
	input [31:0] in0,
	input	sel
	);


mux_2to1 bit31(.out(out[31]), .in1(in1[31]), .in0(in0[31]), .sel(sel));
mux_2to1 bit30(.out(out[30]), .in1(in1[30]), .in0(in0[30]), .sel(sel));
mux_2to1 bit29(.out(out[29]), .in1(in1[29]), .in0(in0[29]), .sel(sel));
mux_2to1 bit28(.out(out[28]), .in1(in1[28]), .in0(in0[28]), .sel(sel));
mux_2to1 bit27(.out(out[27]), .in1(in1[27]), .in0(in0[27]), .sel(sel));
mux_2to1 bit26(.out(out[26]), .in1(in1[26]), .in0(in0[26]), .sel(sel));
mux_2to1 bit25(.out(out[25]), .in1(in1[25]), .in0(in0[25]), .sel(sel));
mux_2to1 bit24(.out(out[24]), .in1(in1[24]), .in0(in0[24]), .sel(sel));
mux_2to1 bit23(.out(out[23]), .in1(in1[23]), .in0(in0[23]), .sel(sel));
mux_2to1 bit22(.out(out[22]), .in1(in1[22]), .in0(in0[22]), .sel(sel));
mux_2to1 bit21(.out(out[21]), .in1(in1[21]), .in0(in0[21]), .sel(sel));
mux_2to1 bit20(.out(out[20]), .in1(in1[20]), .in0(in0[20]), .sel(sel));
mux_2to1 bit19(.out(out[19]), .in1(in1[19]), .in0(in0[19]), .sel(sel));
mux_2to1 bit18(.out(out[18]), .in1(in1[18]), .in0(in0[18]), .sel(sel));
mux_2to1 bit17(.out(out[17]), .in1(in1[17]), .in0(in0[17]), .sel(sel));
mux_2to1 bit16(.out(out[16]), .in1(in1[16]), .in0(in0[16]), .sel(sel));
mux_2to1 bit15(.out(out[15]), .in1(in1[15]), .in0(in0[15]), .sel(sel));
mux_2to1 bit14(.out(out[14]), .in1(in1[14]), .in0(in0[14]), .sel(sel));
mux_2to1 bit13(.out(out[13]), .in1(in1[13]), .in0(in0[13]), .sel(sel));
mux_2to1 bit12(.out(out[12]), .in1(in1[12]), .in0(in0[12]), .sel(sel));
mux_2to1 bit11(.out(out[11]), .in1(in1[11]), .in0(in0[11]), .sel(sel));
mux_2to1 bit10(.out(out[10]), .in1(in1[10]), .in0(in0[10]), .sel(sel));
mux_2to1 bit9(.out(out[9]), .in1(in1[9]), .in0(in0[9]), .sel(sel));
mux_2to1 bit8(.out(out[8]), .in1(in1[8]), .in0(in0[8]), .sel(sel));
mux_2to1 bit7(.out(out[7]), .in1(in1[7]), .in0(in0[7]), .sel(sel));
mux_2to1 bit6(.out(out[6]), .in1(in1[6]), .in0(in0[6]), .sel(sel));
mux_2to1 bit5(.out(out[5]), .in1(in1[5]), .in0(in0[5]), .sel(sel));
mux_2to1 bit4(.out(out[4]), .in1(in1[4]), .in0(in0[4]), .sel(sel));
mux_2to1 bit3(.out(out[3]), .in1(in1[3]), .in0(in0[3]), .sel(sel));
mux_2to1 bit2(.out(out[2]), .in1(in1[2]), .in0(in0[2]), .sel(sel));
mux_2to1 bit1(.out(out[1]), .in1(in1[1]), .in0(in0[1]), .sel(sel));
mux_2to1 bit0(.out(out[0]), .in1(in1[0]), .in0(in0[0]), .sel(sel));


endmodule
