library verilog;
use verilog.vl_types.all;
entity registers is
    port(
        read_data_RS    : out    vl_logic_vector(31 downto 0);
        read_data_RT    : out    vl_logic_vector(31 downto 0);
        RegWrite_RT_RD  : in     vl_logic;
        RegWrite_RS     : in     vl_logic;
        clk             : in     vl_logic;
        RS              : in     vl_logic_vector(4 downto 0);
        RT              : in     vl_logic_vector(4 downto 0);
        write_register  : in     vl_logic_vector(4 downto 0);
        write_data      : in     vl_logic_vector(31 downto 0);
        write_data_RS   : in     vl_logic_vector(31 downto 0)
    );
end registers;
