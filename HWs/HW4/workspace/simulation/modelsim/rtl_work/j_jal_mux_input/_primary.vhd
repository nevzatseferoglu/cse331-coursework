library verilog;
use verilog.vl_types.all;
entity j_jal_mux_input is
    port(
        \out\           : out    vl_logic_vector(31 downto 0);
        in1             : in     vl_logic_vector(3 downto 0);
        in0             : in     vl_logic_vector(25 downto 0)
    );
end j_jal_mux_input;
