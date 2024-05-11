library verilog;
use verilog.vl_types.all;
entity datapath_vlg_sample_tst is
    port(
        ALUControl      : in     vl_logic_vector(2 downto 0);
        ALUSrc          : in     vl_logic;
        Inst            : in     vl_logic_vector(25 downto 0);
        MemRead         : in     vl_logic;
        MemToReg        : in     vl_logic;
        MemWrite        : in     vl_logic;
        RegDst          : in     vl_logic;
        RegWrite        : in     vl_logic;
        clk             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end datapath_vlg_sample_tst;
