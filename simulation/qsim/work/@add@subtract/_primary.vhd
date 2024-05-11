library verilog;
use verilog.vl_types.all;
entity AddSubtract is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        subtract        : in     vl_logic;
        result          : out    vl_logic_vector(31 downto 0);
        overflow        : out    vl_logic
    );
end AddSubtract;
