library verilog;
use verilog.vl_types.all;
entity alu_32bit is
    port(
        r               : out    vl_logic_vector(31 downto 0);
        co              : out    vl_logic;
        z               : out    vl_logic;
        aluOp           : in     vl_logic_vector(2 downto 0);
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0)
    );
end alu_32bit;
