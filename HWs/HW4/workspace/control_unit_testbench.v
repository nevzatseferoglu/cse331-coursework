
`define DELAY 20
module control_unit_testbench();

wire RegDest;
wire Beq, Bne;
wire MemRead, MemWrite;
wire MemtoReg;
wire [1:0] AluOp;
wire AluSrc;
wire RegWrite1, RegWrite2;
wire ori;
wire lui;
wire j, jal, jr;
wire lw;

reg [5:0] opcode;

control_unit test_control_unit (
	 .RegDest(RegDest),
	 .Beq(Beq), .Bne(Bne),
	 .MemRead(MemRead), .MemWrite(MemWrite),
	 .MemtoReg(MemtoReg),
	 .AluOp(AluOp),
	 .AluSrc(AluSrc),
	 .RegWrite1(RegWrite1), .RegWrite2(RegWrite2),
	 .ori(ori),
	 .lui(lui),
	 .j(j), .jal(jal), .jr(jr),
	 .lw(lw),
	
	 .opcode(opcode)
	);

initial begin
	/*rtype*/
	opcode = 6'b000000;
	#`DELAY;
	
	/*lw*/
	opcode = 6'b100011;
	#`DELAY;
	
	/*sw*/
	opcode = 6'b101011;
	#`DELAY;
	
	/*beq*/
	opcode = 6'b000100;
	#`DELAY;
	
	/*bne*/
	opcode = 6'b000101;
	#`DELAY;
	
	/*ori*/
	opcode = 6'b001101;
	#`DELAY;
	
	/*lui*/
	opcode = 6'b001111;
	#`DELAY;
	
	/*j*/
	opcode = 6'b000010;
	#`DELAY;
	
	/*jal*/
	opcode = 6'b000011;
	#`DELAY;
	
	/*jr*/
	opcode = 6'b001000;
	#`DELAY;
	
end
 
initial begin
	$monitor("opcode=%6b, AluSrc=%1b, RegWrite1=%1b, RegWrite2=%1b, ori=%1b, lui=%1b, j=%1b, jal=%1b, lw=%1b, jr=%1b", opcode, AluSrc, RegWrite1, RegWrite2, ori, lui, j, jal, lw, jr);
end
 
endmodule
