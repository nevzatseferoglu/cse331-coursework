
`define DELAY 20
module mux_4to1_testbench();

reg in3;
reg in2;
reg in1;
reg in0;
reg [1:0] sel;
wire out;

mux_4to1 test_mux (
	.out(out),
	.in3(in3),
	.in2(in2),
	.in1(in1),
	.in0(in0),
	.sel(sel)
	);

initial begin
	sel = 2'b00; in3 = 1'b0; in2 = 1'b0; in1 = 1'b0; in0 = 1'b1;  
	#`DELAY;
	sel = 2'b01; in3 = 1'b0; in2 = 1'b0; in1 = 1'b1; in0 = 1'b0;  
	#`DELAY;
	sel = 2'b10; in3 = 1'b0; in2 = 1'b1; in1 = 1'b0; in0 = 1'b0;  
	#`DELAY;
	sel = 2'b11; in3 = 1'b1; in2 = 1'b0; in1 = 1'b0; in0 = 1'b0;
end
 
 
initial
begin
	$monitor("sel = %2b, in3 = %1b, in2 = %1b, in1 = %1b, in0 = %1b, out = %1b", sel, in3, in2, in1, in0, out);
end
 
endmodule
