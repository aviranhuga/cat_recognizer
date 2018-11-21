library verilog;
use verilog.vl_types.all;
entity RegisterFile_tester is
    generic(
        Amba_Word       : integer := 24;
        Addr_Depth      : integer := 12
    );
    port(
        clock           : out    vl_logic;
        address         : out    vl_logic_vector;
        en_write        : out    vl_logic;
        en_read         : out    vl_logic;
        data_in         : out    vl_logic_vector;
        data_out        : out    vl_logic_vector;
        temp_data_out   : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Amba_Word : constant is 1;
    attribute mti_svvh_generic_type of Addr_Depth : constant is 1;
end RegisterFile_tester;
