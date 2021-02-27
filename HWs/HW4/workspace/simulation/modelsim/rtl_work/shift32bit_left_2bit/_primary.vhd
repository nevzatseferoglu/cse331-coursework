library verilog;
use verilog.vl_types.all;
entity shift32bit_left_2bit is
    port(
        \out\           : out    vl_logic_vector(31 downto 0);
        \in\            : in     vl_logic_vector(31 downto 0)
    );
end shift32bit_left_2bit;
