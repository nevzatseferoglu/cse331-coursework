library verilog;
use verilog.vl_types.all;
entity alu_control is
    port(
        aluOpToAlu      : out    vl_logic_vector(2 downto 0);
        aluOpFromCU     : in     vl_logic_vector(1 downto 0);
        funcField       : in     vl_logic_vector(5 downto 0)
    );
end alu_control;
