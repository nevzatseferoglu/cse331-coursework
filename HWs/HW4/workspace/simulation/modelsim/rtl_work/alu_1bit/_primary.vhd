library verilog;
use verilog.vl_types.all;
entity alu_1bit is
    port(
        co              : out    vl_logic;
        ri              : out    vl_logic;
        aluOp           : in     vl_logic_vector(2 downto 0);
        ci              : in     vl_logic;
        bi              : in     vl_logic;
        ai              : in     vl_logic
    );
end alu_1bit;
