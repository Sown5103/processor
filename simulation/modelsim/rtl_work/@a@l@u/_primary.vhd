library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        A               : in     vl_logic_vector(31 downto 0);
        B               : in     vl_logic_vector(31 downto 0);
        s               : in     vl_logic_vector(2 downto 0);
        result          : out    vl_logic_vector(31 downto 0);
        overflow        : out    vl_logic
    );
end ALU;
