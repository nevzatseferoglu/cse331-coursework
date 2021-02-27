
`define DELAY 20
module Mips32_testbench();

reg clk;

Mips32 test_Mips32 (
	.clk(clk)
	);

initial begin
	clk = 0;
	$readmemb("data_memory.txt", test_Mips32.DM.mips_data_memory_256KB);
	$readmemb("instruction_memory.txt", test_Mips32.IM.mips_instruction_memory);
	$readmemb("registers.txt", test_Mips32.REG.mips_registers);
	
	
	#`DELAY;
	//#200 $writememb("after_registers.txt", test_Mips32.REG.mips_registers);
	//#200 $writememb("after_memory.txt", test_Mips32.DM.mips_data_memory_256KB);
end

	
initial begin
end 

 
always begin
	#10 clk = ~clk;
end
 
endmodule







