library verilog;
use verilog.vl_types.all;
entity RegFile is
    port(
        rwe             : in     vl_logic;
        clk             : in     vl_logic;
        wa              : in     vl_logic_vector(4 downto 0);
        ra1             : in     vl_logic_vector(4 downto 0);
        ra2             : in     vl_logic_vector(4 downto 0);
        wd              : in     vl_logic_vector(31 downto 0);
        rd1             : out    vl_logic_vector(31 downto 0);
        rd2             : out    vl_logic_vector(31 downto 0)
    );
end RegFile;
