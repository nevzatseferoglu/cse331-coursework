
`define DELAY 20
module mux_2to1_32bit_testbench();


reg [31:0] in1;
reg [31:0] in0;
reg sel;

wire [31:0] out;

mux_2to1_32bit test_mux (
	.out(out),
	.in1(in1),
	.in0(in0),
	.sel(sel)
	);

initial begin
	sel = 1'b0; in1 = 32'b0000_0000_0000_0000_0000_0000_0000_0010; in0 = 32'b0000_0000_0000_0000_0000_0000_0000_0001;  
	#`DELAY;
	sel = 1'b1; in1 = 32'b0000_0000_0000_0000_0000_0000_0000_0010; in0 = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
end
 
 
initial
begin
	$monitor("sel = %1b, in1 = %32b, in0 = %32b, out = %32b", sel, in1, in0, out);
end
 
endmodule
