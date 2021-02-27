module registers(
	output reg [31:0] read_data_RS,
	output reg [31:0] read_data_RT,
	
	input RegWrite_RT_RD,
	input RegWrite_RS,
	input clk,
	
	input [4:0] RS,
	input [4:0] RT,
	input [4:0] write_register,
	input [31:0] write_data,
	input [31:0] write_data_RS
	);


reg [31:0] mips_registers [31:0];

always @(*) begin
	read_data_RS = mips_registers[RS];
	read_data_RT = mips_registers[RT];
end

always @(posedge clk) begin

	if(RegWrite_RT_RD) begin
		mips_registers[write_register] <= write_data;
	end
	
	if(RegWrite_RS) begin
		mips_registers[RS] <= write_data_RS;
	end
	
end


	
endmodule
