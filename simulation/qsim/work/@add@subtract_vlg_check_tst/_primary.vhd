library verilog;
use verilog.vl_types.all;
entity AddSubtract_vlg_check_tst is
    port(
        overflow        : in     vl_logic;
        result          : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end AddSubtract_vlg_check_tst;
