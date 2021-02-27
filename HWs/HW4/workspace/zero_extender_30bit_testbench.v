
`define DELAY 20
module zero_extender_30bit_testbench();

reg [1:0] in;
wire [31:0] out;

zero_extender_30bit test_extender (
	.out(out),
	.in(in)
	);

initial begin
	in = 2'b00;  
	#`DELAY;
	in = 2'b01;  
	#`DELAY;
	in = 2'b10;  
	#`DELAY;
	in = 2'b11;  
	#`DELAY;
end
 
 
initial begin
	$monitor("in = %2b, out = %32b", in, out);
end
 
endmodule
