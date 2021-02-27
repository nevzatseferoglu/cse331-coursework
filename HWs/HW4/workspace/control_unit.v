module control_unit (
	output RegDest,
	output Beq, Bne,
	output MemRead, MemWrite,
	output MemtoReg,
	output [1:0] AluOp,
	output AluSrc,
	output RegWrite1, RegWrite2,
	output ori,
	output lui,
	output j, jal, jr,
	output lw,
	
	input [5:0] opcode
);

wire rtype;
wire lwtype;
wire oritype;
wire swtype;
wire luitype;
wire jaltype;
wire opnot0, opnot1, opnot2, opnot3, opnot4, opnot5; 

not bitBit0(opnot0, opcode[0]);
not bitBit1(opnot1, opcode[1]);
not bitBit2(opnot2, opcode[2]);
not bitBit3(opnot3, opcode[3]);
not bitBit4(opnot4, opcode[4]);
not bitBit5(opnot5, opcode[5]);

//RegDest
and RegDestA(RegDest, opnot5, opnot4, opnot3, opnot2, opnot1, opnot0);
or (rtype, RegDest, 1'b0);

//Beq
and  BeqA(Beq, opnot5, opnot4, opnot3, opcode[2], opnot1, opnot0);
//Bne
and  BneA(Bne, opnot5, opnot4, opnot3, opcode[2], opnot1, opcode[0]);

//MemRead, MemToReg
and MemReadA(MemRead, opcode[5], opnot4, opnot3, opnot2, opcode[1], opcode[0]);
or MemtoRegA(MemtoReg, MemRead, 1'b0);
or lwtypeA(lwtype, MemRead, 1'b0);

//AluOp1
and oritypeA(oritype, opnot5, opnot4, opcode[3], opcode[2], opnot1, opcode[0]);
or AluOp1A(AluOp[1], rtype, oritype);

//AluOp0
or AluOp0A(AluOp[0], Beq, Bne, oritype);

//MemWrite
and swtypeA(swtype, opcode[5], opnot4, opcode[3], opnot2, opcode[1], opcode[0]);
or MemWriteA(MemWrite, swtype, 1'b0);

//AluSrc
or AluSrcA(AluSrc, lwtype, swtype);

//RegWrite1
and luitypeA(luitype, opnot5, opnot4, opcode[3], opcode[2], opcode[1], opcode[0]);
and jaltypeA(jaltype, opnot5, opnot4, opnot3, opnot2, opcode[1], opcode[0]);
or RegWrite1A(RegWrite1, rtype, lwtype, oritype, luitype, jaltype);

//RegWrite2
or RegWrite2A(RegWrite2, rtype, 1'b0);

//ori
or oriA(ori, oritype, 1'b0);

//lui
or luiA(lui, luitype, 1'b0);

//j
and jA(j, opnot5, opnot4, opnot3, opnot2, opcode[1], opnot0);

//jal
or jalA(jal, jaltype, 1'b0);

//jr
and jrA(jr, opnot5, opnot4, opcode[3], opnot2, opnot1, opnot0);

//lw
or lwA(lw, lwtype, 1'b0);


endmodule
