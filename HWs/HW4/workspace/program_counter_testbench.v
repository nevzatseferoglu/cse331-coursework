
`define DELAY 20
module program_counter_testbench();

reg clk;
reg [31:0] in;
wire [31:0] out;

program_counter test_program_counter (
	.out(out),
	.clk(clk),
	.in(in)
	);

initial begin
	in = 16'b1000000000000001;  
	#`DELAY;
	#`DELAY;
end

always begin
#10 clk = ~clk;
end
 
initial begin
	$monitor("in = %16b, out = %32b", in, out);
end
 
endmodule







