library verilog;
use verilog.vl_types.all;
entity Pratica1_Part3 is
    port(
        address         : in     vl_logic_vector(4 downto 0);
        write           : in     vl_logic_vector(2 downto 0);
        wren            : in     vl_logic;
        clock           : in     vl_logic;
        read            : out    vl_logic_vector(8 downto 0)
    );
end Pratica1_Part3;
