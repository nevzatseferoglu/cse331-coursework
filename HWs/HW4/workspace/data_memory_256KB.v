module data_memory_256KB(
	output reg [31:0] readData,
	
	input clk,
	input memRead,
	input memWrite,
	input [17:0] address,
	input [31:0] writeData
);


reg [7:0] mips_data_memory_256KB [19:0];


always @(*) begin
	if (memRead) begin
		readData[7:0] = mips_data_memory_256KB[address + 18'b11];
		readData[15:8] = mips_data_memory_256KB[address + 18'b10];
		readData[23:16] = mips_data_memory_256KB[address + 18'b01];
		readData[31:24] = mips_data_memory_256KB[address];
	end else begin
		readData[7:0] = 8'b0;
		readData[15:8] = 8'b0;
		readData[23:16] = 8'b0;
		readData[31:24] = 8'b0;
	end
end


always @(posedge clk) begin
	if (memWrite) begin
		mips_data_memory_256KB[address] <= writeData[31:24];
		mips_data_memory_256KB[address + 18'b01] <= writeData[23:16];
		mips_data_memory_256KB[address + 18'b10] <= writeData[15:8];
		mips_data_memory_256KB[address + 18'b11] <= writeData[7:0];
	end
end


endmodule
