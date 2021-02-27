
`define DELAY 20
module adder_subtractor_32bit_testbench();

reg subt_signal;
reg [31:0] A;
reg [31:0] B;

wire [31:0] result;
wire carry_out;



adder_subtractor_32bit test_adder_subtractor (
	.result(result),
	.carry_out(carry_out),
	
	.subt_signal(subt_signal),
	.A(A),
	.B(B)
	);

initial begin
	A = 32'b1111_1111_1111_1111_1111_1111_1111_1110;
	B = 32'b0000_0000_0000_0000_0000_0000_0000_0001;
	subt_signal = 1'b0;
	#`DELAY;
	
	A = 32'b1111_1111_1111_1111_1111_1111_1111_1011;
	B = 32'b1111_1111_1111_1111_1111_1111_1111_1110;
	subt_signal = 1'b1;
end
 
 
initial begin
	$monitor("result = %32b, carry_out = %1b", result, carry_out);
end
 
endmodule
