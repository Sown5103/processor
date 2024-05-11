library verilog;
use verilog.vl_types.all;
entity Mux21_32_vlg_sample_tst is
    port(
        data0           : in     vl_logic_vector(31 downto 0);
        data1           : in     vl_logic_vector(31 downto 0);
        \select\        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Mux21_32_vlg_sample_tst;
