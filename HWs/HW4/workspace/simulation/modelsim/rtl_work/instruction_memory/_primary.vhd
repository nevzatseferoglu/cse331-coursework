library verilog;
use verilog.vl_types.all;
entity instruction_memory is
    port(
        instruction     : out    vl_logic_vector(31 downto 0);
        readAddress     : in     vl_logic_vector(31 downto 0)
    );
end instruction_memory;
