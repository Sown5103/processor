library verilog;
use verilog.vl_types.all;
entity sram is
    port(
        re              : in     vl_logic;
        we              : in     vl_logic;
        clk             : in     vl_logic;
        a               : in     vl_logic_vector(31 downto 0);
        wd              : in     vl_logic_vector(31 downto 0);
        rd              : out    vl_logic_vector(31 downto 0)
    );
end sram;
