library verilog;
use verilog.vl_types.all;
entity Neuron_tester is
    port(
        x               : out    vl_logic_vector(7 downto 0);
        w               : out    vl_logic_vector(15 downto 0);
        \out\           : in     vl_logic_vector(31 downto 0)
    );
end Neuron_tester;
