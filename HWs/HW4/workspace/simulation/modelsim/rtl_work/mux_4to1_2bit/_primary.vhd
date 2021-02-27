library verilog;
use verilog.vl_types.all;
entity mux_4to1_2bit is
    port(
        \out\           : out    vl_logic_vector(1 downto 0);
        in3             : in     vl_logic_vector(1 downto 0);
        in2             : in     vl_logic_vector(1 downto 0);
        in1             : in     vl_logic_vector(1 downto 0);
        in0             : in     vl_logic_vector(1 downto 0);
        sel             : in     vl_logic_vector(1 downto 0)
    );
end mux_4to1_2bit;
