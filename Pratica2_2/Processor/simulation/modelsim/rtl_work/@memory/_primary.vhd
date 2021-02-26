library verilog;
use verilog.vl_types.all;
entity Memory is
    port(
        Clock           : in     vl_logic;
        address         : in     vl_logic_vector(4 downto 0);
        Resetn          : in     vl_logic;
        data            : out    vl_logic_vector(15 downto 0)
    );
end Memory;
