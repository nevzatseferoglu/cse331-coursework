`define DELAY 20
module half_adder_testbench(); 
reg a, b;
wire sum, carry_out;

half_adder hatb (sum, carry_out, a, b);

initial begin
end
 
 
initial begin
	$monitor("time = %2d, a =%1b, b=%1b, sum=%1b, carry_out=%1b", $time, a, b, sum, carry_out);
end
endmodule