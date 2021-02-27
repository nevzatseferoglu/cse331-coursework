
`define DELAY 20
module data_memory_256KB_testbench();

wire [31:0] readData;
	
reg clk;
reg memRead;
reg memWrite;
reg [17:0] address;
reg [31:0] writeData;

data_memory_256KB test_data_memory (
	.readData(readData),
	
	.clk(clk),
	.memRead(memRead),
	.memWrite(memWrite),
	.address(address),
	.writeData(writeData)
	);
	
initial begin
  $readmemb("data_memory.txt", test_data_memory.mips_data_memory_256KB);
  clk = 0;
  address = 17'b00;
  writeData = 32'b1111;
  memWrite = 1'b0;
  memRead = 1'b1;
  #`DELAY;
  
  address = 17'b01;
  writeData = 32'b111;
  memWrite = 1'b0;
  memRead = 1'b1;
  #`DELAY;
  
  address = 17'b01;
  writeData = 32'b11;
  memWrite = 1'b1;
  memRead = 1'b1;
  #`DELAY;
  
end


always begin
  #10 clk = ~clk;
end

initial begin
  $monitor("address=%17b, writeData=%32b, memWrite=%1b, memRead=%1b, readData=%32b",
    address, writeData, memWrite, memRead, readData);
end
 
endmodule



