
`define DELAY 20
module j_jal_mux_input_testbench();

wire [31:0] out;
reg [3:0] in1;
reg [25:0] in0;

j_jal_mux_input test_mux_input (
	.out(out),
	.in1(in1),
	.in0(in0)
	);

initial begin
	in1 = 4'b1001;
	in0 = 25'b11111;
	#`DELAY;
end

 
initial begin
	$monitor("in1 = %3b in0 = %25b, out = %32b", in1, in0, out);
end
 
endmodule
