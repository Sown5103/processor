library verilog;
use verilog.vl_types.all;
entity datapath is
    port(
        RegDst          : in     vl_logic;
        RegWrite        : in     vl_logic;
        ALUSrc          : in     vl_logic;
        MemWrite        : in     vl_logic;
        MemToReg        : in     vl_logic;
        MemRead         : in     vl_logic;
        clk             : in     vl_logic;
        ALUControl      : in     vl_logic_vector(2 downto 0);
        Inst            : in     vl_logic_vector(25 downto 0);
        RD              : out    vl_logic_vector(31 downto 0)
    );
end datapath;
