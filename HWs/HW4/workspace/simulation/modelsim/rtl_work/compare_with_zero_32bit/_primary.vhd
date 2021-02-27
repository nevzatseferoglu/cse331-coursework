library verilog;
use verilog.vl_types.all;
entity compare_with_zero_32bit is
    port(
        equal           : out    vl_logic;
        lessThan        : out    vl_logic;
        \in\            : in     vl_logic_vector(31 downto 0)
    );
end compare_with_zero_32bit;
