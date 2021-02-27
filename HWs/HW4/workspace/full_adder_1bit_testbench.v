
`define DELAY 20
module full_adder_1bit_testbench();

reg A;
reg B;
reg carry_in;

wire sum;
wire carry_out;



full_adder_1bit test_full_adder (
	.sum(sum),
	.carry_out(carry_out),
	
	.A(A),
	.B(B),
	.carry_in(carry_in)
	);

initial begin
	A = 1'b0;
	B = 1'b0;
	carry_in = 1'b0;
	#`DELAY;
	
	A = 1'b0;
	B = 1'b0;
	carry_in = 1'b1;
	#`DELAY;
	
	A = 1'b0;
	B = 1'b1;
	carry_in = 1'b0;
	#`DELAY;
	
	A = 1'b0;
	B = 1'b1;
	carry_in = 1'b1;
	#`DELAY;
	
	A = 1'b1;
	B = 1'b0;
	carry_in = 1'b0;
	#`DELAY;
	
	A = 1'b1;
	B = 1'b0;
	carry_in = 1'b1;
	#`DELAY;
	
	A = 1'b1;
	B = 1'b1;
	carry_in = 1'b0;
	#`DELAY;
	
	A = 1'b1;
	B = 1'b1;
	carry_in = 1'b1;
end

 
initial begin
	$monitor("sum = %1b, cout = %1b", sum, carry_out);
end
 
endmodule
