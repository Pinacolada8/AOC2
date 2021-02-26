library verilog;
use verilog.vl_types.all;
entity Counter is
    port(
        Clock           : in     vl_logic;
        Nextmem         : in     vl_logic;
        Resetn          : in     vl_logic;
        n               : out    vl_logic_vector(4 downto 0)
    );
end Counter;
