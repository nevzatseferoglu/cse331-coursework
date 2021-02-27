library verilog;
use verilog.vl_types.all;
entity adder_subtractor_32bit is
    port(
        result          : out    vl_logic_vector(31 downto 0);
        carry_out       : out    vl_logic;
        subt_signal     : in     vl_logic;
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0)
    );
end adder_subtractor_32bit;
