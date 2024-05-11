library verilog;
use verilog.vl_types.all;
entity Mux21_5 is
    port(
        data0           : in     vl_logic_vector(4 downto 0);
        data1           : in     vl_logic_vector(4 downto 0);
        \select\        : in     vl_logic;
        output_data     : out    vl_logic_vector(4 downto 0)
    );
end Mux21_5;
