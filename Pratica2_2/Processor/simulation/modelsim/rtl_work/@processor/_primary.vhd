library verilog;
use verilog.vl_types.all;
entity Processor is
    port(
        MClock          : in     vl_logic;
        PClock          : in     vl_logic;
        Resetn          : in     vl_logic;
        BusWires        : out    vl_logic_vector(15 downto 0);
        Done            : out    vl_logic
    );
end Processor;
