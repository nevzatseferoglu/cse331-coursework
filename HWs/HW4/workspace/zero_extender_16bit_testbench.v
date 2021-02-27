
`define DELAY 20
module zero_extender_16bit_testbench();

reg [15:0] in;
wire [31:0] out;

zero_extender_16bit test_extender (
	.out(out),
	.in(in)
	);

initial begin
	in = 16'b1000000000000001;  
	#`DELAY;
	in = 16'b0000000000000010; 
	#`DELAY;
end
 
 
initial begin
	$monitor("in = %16b, out = %32b", in, out);
end
 
endmodule
