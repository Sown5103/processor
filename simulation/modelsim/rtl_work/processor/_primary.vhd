library verilog;
use verilog.vl_types.all;
entity processor is
    port(
        Inst            : in     vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        isZero          : out    vl_logic;
        WD              : out    vl_logic_vector(31 downto 0)
    );
end processor;
