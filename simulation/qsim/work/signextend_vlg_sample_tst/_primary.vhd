library verilog;
use verilog.vl_types.all;
entity signextend_vlg_sample_tst is
    port(
        \in\            : in     vl_logic_vector(15 downto 0);
        sampler_tx      : out    vl_logic
    );
end signextend_vlg_sample_tst;
