library verilog;
use verilog.vl_types.all;
entity zero_extender_16bit is
    port(
        \out\           : out    vl_logic_vector(31 downto 0);
        \in\            : in     vl_logic_vector(15 downto 0)
    );
end zero_extender_16bit;
