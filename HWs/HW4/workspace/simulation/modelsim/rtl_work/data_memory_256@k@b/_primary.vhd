library verilog;
use verilog.vl_types.all;
entity data_memory_256KB is
    port(
        readData        : out    vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        memRead         : in     vl_logic;
        memWrite        : in     vl_logic;
        address         : in     vl_logic_vector(17 downto 0);
        writeData       : in     vl_logic_vector(31 downto 0)
    );
end data_memory_256KB;
