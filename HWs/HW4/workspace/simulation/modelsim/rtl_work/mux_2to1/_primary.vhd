library verilog;
use verilog.vl_types.all;
entity mux_2to1 is
    port(
        \out\           : out    vl_logic;
        in1             : in     vl_logic;
        in0             : in     vl_logic;
        sel             : in     vl_logic
    );
end mux_2to1;
