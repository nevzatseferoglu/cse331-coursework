
`define DELAY 20
module mux_2to1_5bit_testbench();


reg [4:0] in1;
reg [4:0] in0;
reg sel;

wire [4:0] out;

mux_2to1_5bit test_mux (
	.out(out),
	.in1(in1),
	.in0(in0),
	.sel(sel)
	);

initial begin
	sel = 1'b0; in1 = 5'b00011; in0 = 5'b00010;  
	#`DELAY;
	sel = 1'b1; in1 = 5'b00011; in0 = 5'b00010;
end
 
 
initial
begin
	$monitor("sel = %1b, in1 = %5b, in0 = %5b, out = %5b", sel, in1, in0, out);
end
 
endmodule
