
`define DELAY 20
module compare_with_zero_32bit_testbench();

reg [31:0] in;

wire equal;
wire lessThan;


compare_with_zero_32bit test_comparator (
	.equal(equal),
	.lessThan(lessThan),
	
	.in(in)
	);

initial begin
	in = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
	#`DELAY;
	
	in = 32'b1000_0000_0000_0000_0000_0000_0000_0001;
	#`DELAY;
	
	in = 32'b0000_0000_0000_0000_0000_0000_0000_0000;
	#`DELAY;
end
 
 
initial begin
	$monitor("in = %32b, equal = %1b, lessThan = %1b", in, equal, lessThan);
end
 
endmodule
