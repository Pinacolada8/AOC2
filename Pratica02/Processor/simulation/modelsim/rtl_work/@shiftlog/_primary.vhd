library verilog;
use verilog.vl_types.all;
entity Shiftlog is
    port(
        Shiftdirection  : in     vl_logic;
        A               : in     vl_logic_vector(15 downto 0);
        B               : in     vl_logic_vector(15 downto 0);
        S               : out    vl_logic_vector(15 downto 0)
    );
end Shiftlog;
