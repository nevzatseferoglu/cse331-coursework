`define DELAY 30
module full_adder_testbench(); 

reg Var1;

initial begin
Var1 <= "-";
end


initial begin
$monitor("time = %2d, Var1 =%s", $time, Var1);
end
 
endmodule