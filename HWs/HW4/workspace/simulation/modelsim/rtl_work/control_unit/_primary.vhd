library verilog;
use verilog.vl_types.all;
entity control_unit is
    port(
        RegDest         : out    vl_logic;
        Beq             : out    vl_logic;
        Bne             : out    vl_logic;
        MemRead         : out    vl_logic;
        MemWrite        : out    vl_logic;
        MemtoReg        : out    vl_logic;
        AluOp           : out    vl_logic_vector(1 downto 0);
        AluSrc          : out    vl_logic;
        RegWrite1       : out    vl_logic;
        RegWrite2       : out    vl_logic;
        ori             : out    vl_logic;
        lui             : out    vl_logic;
        j               : out    vl_logic;
        jal             : out    vl_logic;
        jr              : out    vl_logic;
        lw              : out    vl_logic;
        opcode          : in     vl_logic_vector(5 downto 0)
    );
end control_unit;
