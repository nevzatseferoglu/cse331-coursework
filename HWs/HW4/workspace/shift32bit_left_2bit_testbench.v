
`define DELAY 20
module shift32bit_left_2bit_testbench();

reg [31:0] in;
wire [31:0] out;

shift32bit_left_2bit test_shifter (
	.out(out),
	.in(in)
	);

initial begin
	in = 32'b1;  
	#`DELAY;
	in = 32'b101; 
	#`DELAY;
end
 
 
initial begin
	$monitor("in = %32b, out = %32b", in, out);
end
 
endmodule
