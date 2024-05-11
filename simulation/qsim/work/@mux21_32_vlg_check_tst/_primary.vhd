library verilog;
use verilog.vl_types.all;
entity Mux21_32_vlg_check_tst is
    port(
        output_data     : in     vl_logic_vector(31 downto 0);
        sampler_rx      : in     vl_logic
    );
end Mux21_32_vlg_check_tst;
