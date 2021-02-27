
`define DELAY 20
module instruction_memory_testbench();

wire [31:0] instruction;
reg [31:0] readAddress;

instruction_memory test_instruction_memory (
	.instruction(instruction),
	.readAddress(readAddress)
	);
	
initial begin
	$readmemb("instruction_memory.txt", test_instruction_memory.mips_instruction_memory);
end	


initial begin
    readAddress = 32'b0;
    #`DELAY;
end


initial begin
    $monitor("readAddress=%32b, instruction=%32b", readAddress, instruction);
end
 
endmodule
