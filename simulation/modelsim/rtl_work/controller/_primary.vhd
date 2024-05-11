library verilog;
use verilog.vl_types.all;
entity controller is
    port(
        opcode          : in     vl_logic_vector(5 downto 0);
        reset           : in     vl_logic;
        RegDst          : out    vl_logic;
        MemRead         : out    vl_logic;
        MemWrite        : out    vl_logic;
        MemToReg        : out    vl_logic;
        ALUSrc          : out    vl_logic;
        RegWrite        : out    vl_logic;
        ALUop           : out    vl_logic_vector(1 downto 0)
    );
end controller;
