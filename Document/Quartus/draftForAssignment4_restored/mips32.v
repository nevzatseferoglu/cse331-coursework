module mips32(instructions, result);

input [31:0] instructions [27:0];
output [31:0] result;

//this project just a DRAFT to giving start point(idea)!!

//this module is a top-level entity
//all modules in this project that have to use just structural verilog (except register & data modules)
//mips32 has to work correctly for 14 instruction.

//Verilog coding guidelines 
//Guideline #1: When modeling sequential logic, use nonblocking assignments.
//Guideline #2: When modeling latches, use nonblocking assignments.
//Guideline #3: When modeling combinational logic with an always block, use blocking assignments.

//briefly explanation of assignment 4:
//need to design least these : control unit & ALU & comparator & register & data & extender/shifter module
//need to write test benchs for all modules (Ex: ALU_testbench, register_testbench,...)
//differences in conventional mips: 
//--------need to write at the same two registers for 'new' instructions (register module)
//--------need to use ALU that include add,sub,xor,and,or and COMPARATOR use for 'new' instructions.
//you can design branchaddr, jumpaddr, signextendimm, zeroextendimm for 18 bits(256kb data mem)
 

endmodule