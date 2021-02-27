module mips32_testbench ();

reg [31:0] instruction_set [27:0]; // 28 test instructions are lower bound. 
wire result;

initial begin
//you can take instructions from file
//readmemb("filename", instruction_set);
//instruction example: ori  s2 s0 immNum, rs=$16 rt=$18 imm=zeroextend(immNum)s2=s0 		
//instruction_set[0] = 32'b001101_10000_10010_0001000000100000; 

//Continue for all instruction types 
//Must be least 14*2=28 control lines (There must be at least 2 tests for each instruction)
//You can change the inside of the register.mem and data.mem files as desired.
//end of the running, output files must be created (register file & data file)

//for register & data memory part, use files
//register.mem or register.txt (file extension does not important)

//for memory file read & write using followings
//$readmemb("register_inp.mem", registerModuleName.registers); 
//$writememb("register_outp.mem", registerModuleName.registers); 

//I suggest you use different registers and data locations for each operation.
//Or you can operate with the same registers(values) in each instructions and write the results in different regsiters/data locations.
//Our aim is making results can be followed
end


endmodule