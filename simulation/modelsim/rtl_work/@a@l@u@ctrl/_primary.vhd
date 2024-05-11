library verilog;
use verilog.vl_types.all;
entity ALUCtrl is
    port(
        ALUop           : in     vl_logic_vector(1 downto 0);
        ALUControl      : out    vl_logic_vector(2 downto 0)
    );
end ALUCtrl;
