library verilog;
use verilog.vl_types.all;
entity sram_vlg_check_tst is
    port(
        rd              : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end sram_vlg_check_tst;
