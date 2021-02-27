
`define DELAY 20
module mux_2to1_testbench();

reg in0, in1, sel;
wire out;

mux_2to1 test_mux (
	.out(out),
	.in1(in1),
	.in0(in0),
	.sel(sel)
	);

initial begin
	in0 = 1'b0; in1 = 1'b0; sel = 1'b0;
	#`DELAY;
	in0 = 1'b0; in1 = 1'b0; sel = 1'b1;
	#`DELAY;
	in0 = 1'b0; in1 = 1'b1; sel = 1'b0;
	#`DELAY;
	in0 = 1'b0; in1 = 1'b1; sel = 1'b1;
	#`DELAY;
	in0 = 1'b1; in1 = 1'b0; sel = 1'b0;
	#`DELAY;
	in0 = 1'b1; in1 = 1'b0; sel = 1'b1;
	#`DELAY;
	in0 = 1'b1; in1 = 1'b1; sel = 1'b0;
	#`DELAY;
	in0 = 1'b1; in1 = 1'b1; sel = 1'b1;
end
 
 
initial
begin
	$monitor("sel = %1b, in1 = %1b, in0 = %1b, out = %1b",sel, in1, in0, out);
end
 
endmodule
