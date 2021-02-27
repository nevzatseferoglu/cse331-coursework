library verilog;
use verilog.vl_types.all;
entity full_adder_1bit is
    port(
        sum             : out    vl_logic;
        carry_out       : out    vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic;
        carry_in        : in     vl_logic
    );
end full_adder_1bit;
