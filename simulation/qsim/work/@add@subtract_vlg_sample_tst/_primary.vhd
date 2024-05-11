library verilog;
use verilog.vl_types.all;
entity AddSubtract_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        subtract        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end AddSubtract_vlg_sample_tst;
