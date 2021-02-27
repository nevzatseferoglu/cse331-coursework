
`define DELAY 20
module alu_control_testbench();

wire [2:0] aluOpToAlu;

reg [1:0] aluOpFromCU;
reg [5:0] funcField;

alu_control test_alu_control (
	.aluOpToAlu(aluOpToAlu),
	
	.aluOpFromCU(aluOpFromCU),
	.funcField(funcField)
	);

initial begin
	aluOpFromCU = 2'b00;
	funcField = 6'b111111;
	#`DELAY;
	
	aluOpFromCU = 2'b01;
	funcField = 6'b111111;
	#`DELAY;
	
	aluOpFromCU = 2'b10;
	funcField = 6'b100000;
	#`DELAY;
	
	aluOpFromCU = 2'b10;
	funcField = 6'b10010;
	#`DELAY;
	
	aluOpFromCU = 2'b10;
	funcField = 6'b100100;
	#`DELAY;
	
	aluOpFromCU = 2'b10;
	funcField = 6'b100101;
	#`DELAY;
	
	aluOpFromCU = 2'b10;
	funcField = 6'b101000;
	#`DELAY;
	
	aluOpFromCU = 2'b11;
	funcField = 6'b111111;
	#`DELAY;
end
 
 
initial begin
	$monitor("aluOpFromCU = %2b, funcField = %6b, aluOpToAlu = %6b", aluOpFromCU, funcField, aluOpToAlu);
end
 
endmodule






