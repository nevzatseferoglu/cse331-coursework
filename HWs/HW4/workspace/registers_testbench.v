
`define DELAY 20
module registers_testbench();

wire [31:0] read_data_RS;
wire [31:0] read_data_RT;

reg RegWrite_RT_RD;
reg RegWrite_RS;
reg clk;

reg [4:0] RS;
reg [4:0] RT;
reg [4:0] write_register;
reg [31:0] write_data;
reg [31:0] write_data_RS;

registers test_registers(
	.read_data_RS(read_data_RS),
	.read_data_RT(read_data_RT),
	
	.RegWrite_RS(RegWrite_RS),
	.RegWrite_RT_RD(RegWrite_RT_RD),
	.clk(clk),
	
	.RS(RS),
	.RT(RT),
	.write_register(write_register),
	.write_data(write_data),
	.write_data_RS(write_data_RS)
	);

initial begin
  clk=0;
  RS = 5'b00000;
  RT = 5'b00001;
  write_register = 5'b00001;
  write_data_RS = 32'b00000000000000000000000000000010;
  write_data = 32'b00000000000000000000000000000011;
  RegWrite_RS = 1'b1;
  RegWrite_RT_RD = 1'b1;
  #`DELAY;

  RS = 5'b00010;
  RT = 5'b00011;
  write_register = 5'b00011;
  write_data_RS = 32'b00000000000000000000000000000110;
  write_data = 32'b00000000000000000000000000000111;
  RegWrite_RS = 1'b1;
  RegWrite_RT_RD = 1'b1;
  #`DELAY;
  
  RS = 5'b00111;
  RT = 5'b00111;
  write_register = 5'b00111;
  write_data_RS = 32'b11000000000000000000000000000000;
  write_data = 32'b10000000000000000000000000000000;
  RegWrite_RS = 1'b1;
  RegWrite_RT_RD = 1'b1;
  #`DELAY;
end

always begin
#10 clk = ~clk;
end

initial begin
	$monitor("time=%2d, read_data1=%32b, read_data2=%32b", $time, read_data_RS, read_data_RT);
end





endmodule
