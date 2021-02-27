

`define DELAY 20
module alu_1bit_testbench();


wire co;
wire ri;

reg [2:0] aluOp;
reg ci;
reg bi;
reg ai;


alu_1bit test_alu (
	.co(co),
	.ri(ri),
	
	.aluOp(aluOp),
	.ci(ci),
	.bi(bi),
	.ai(ai)
	);

initial begin
	
	/* test and */
	aluOp = 3'b000;
	ai = 1'b1;
	bi = 1'b0;
	ci = 1'b0;
	#`DELAY;
	
	
	/* test or */
	aluOp = 3'b001;
	ai = 1'b1;
	bi = 1'b0;
	ci = 1'b0;
	#`DELAY;
	
	
	/* test0 add */
	aluOp = 3'b010;
	ai = 1'b1;
	bi = 1'b0;
	ci = 1'b0;
	#`DELAY;
	
	
	/* test1 add */
	aluOp = 3'b010;
	ai = 1'b1;
	bi = 1'b1;
	ci = 1'b0;
	#`DELAY;
	
	
	/* test2 add */
	aluOp = 3'b010;
	ai = 1'b0;
	bi = 1'b0;
	ci = 1'b0;
	#`DELAY;
	
	/* test3 add */
	aluOp = 3'b010;
	ai = 1'b0;
	bi = 1'b1;
	ci = 1'b0;
	#`DELAY;
	
	
	/* test0 subtract */
	aluOp = 3'b110;
	ai = 1'b1;
	bi = 1'b0;
	ci = 1'b0;
	#`DELAY;
	
	
	/* test1 subtract */
	aluOp = 3'b110;
	ai = 1'b1;
	bi = 1'b1;
	ci = 1'b0;
	#`DELAY;
	
	
	/* test2 subtract */
	aluOp = 3'b110;
	ai = 1'b0;
	bi = 1'b1;
	ci = 1'b0;
	#`DELAY;
	
	
	/* test3 subtract */
	aluOp = 3'b110;
	ai = 1'b0;
	bi = 1'b0;
	ci = 1'b0;
	#`DELAY;
	
	
	/* test0 xor */
	aluOp = 3'b011;
	ai = 1'b0;
	bi = 1'b0;
	ci = 1'b0;
	#`DELAY;
	
	/* test1 xor */
	aluOp = 3'b011;
	ai = 1'b1;
	bi = 1'b0;
	ci = 1'b0;
	#`DELAY;
	
	/* test2 xor */
	aluOp = 3'b011;
	ai = 1'b0;
	bi = 1'b1;
	ci = 1'b0;
	#`DELAY;
	
	/* test3 xor */
	aluOp = 3'b011;
	ai = 1'b1;
	bi = 1'b1;
	ci = 1'b0;
	
end
 
 
initial begin
	$monitor("alu = %3b, ai = %1b, bi = %1b, ri = %1b, co = %1b", aluOp, ai, bi, ri, co);
end
 
endmodule
