module full_adder_1bit(
	output sum,
	output carry_out,
	
	input A,
	input B,
	input carry_in
);

wire out1;
wire out2;
wire out3;

xor op1(out1, A, B);
and op2(out2, A, B);

xor toSum(sum, carry_in, out1);
and op3(out3, carry_in, out1);
or toCarryOut(carry_out, out2, out3);

endmodule
