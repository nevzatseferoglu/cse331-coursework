
`define DELAY 20
module mux_4to1_2bit_testbench();

reg [1:0] in3;
reg [1:0] in2;
reg [1:0] in1;
reg [1:0] in0;
reg [1:0] sel;
wire [1:0] out;

mux_4to1_2bit test_mux (
	.out(out),
	.in3(in3),
	.in2(in2),
	.in1(in1),
	.in0(in0),
	.sel(sel)
	);

initial begin
	sel = 2'b00; in3 = 2'b00; in2 = 2'b00; in1 = 2'b00; in0 = 2'b01;  
	#`DELAY;
	sel = 2'b01; in3 = 2'b00; in2 = 2'b00; in1 = 2'b01; in0 = 2'b00;  
	#`DELAY;
	sel = 2'b10; in3 = 2'b00; in2 = 2'b01; in1 = 2'b00; in0 = 2'b00;  
	#`DELAY;
	sel = 2'b11; in3 = 2'b01; in2 = 2'b00; in1 = 2'b00; in0 = 2'b00;
end
 
 
initial
begin
	$monitor("sel = %2b, in3 = %2b, in2 = %2b, in1 = %2b, in0 = %2b, out = %2b", sel, in3, in2, in1, in0, out);
end
 
endmodule
