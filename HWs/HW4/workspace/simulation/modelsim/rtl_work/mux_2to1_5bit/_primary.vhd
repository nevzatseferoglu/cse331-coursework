library verilog;
use verilog.vl_types.all;
entity mux_2to1_5bit is
    port(
        \out\           : out    vl_logic_vector(4 downto 0);
        in1             : in     vl_logic_vector(4 downto 0);
        in0             : in     vl_logic_vector(4 downto 0);
        sel             : in     vl_logic
    );
end mux_2to1_5bit;
