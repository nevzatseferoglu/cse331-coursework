library verilog;
use verilog.vl_types.all;
entity program_counter is
    port(
        \out\           : out    vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        \in\            : in     vl_logic_vector(31 downto 0)
    );
end program_counter;
