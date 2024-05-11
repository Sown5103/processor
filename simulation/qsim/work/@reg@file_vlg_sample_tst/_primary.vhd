library verilog;
use verilog.vl_types.all;
entity RegFile_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        ra1             : in     vl_logic_vector(4 downto 0);
        ra2             : in     vl_logic_vector(4 downto 0);
        rwe             : in     vl_logic;
        wa              : in     vl_logic_vector(4 downto 0);
        wd              : in     vl_logic_vector(31 downto 0);
        sampler_tx      : out    vl_logic
    );
end RegFile_vlg_sample_tst;
