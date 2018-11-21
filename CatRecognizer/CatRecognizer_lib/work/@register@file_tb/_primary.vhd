library verilog;
use verilog.vl_types.all;
entity RegisterFile_tb is
    generic(
        Amba_Word       : integer := 24;
        Addr_Depth      : integer := 12
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Amba_Word : constant is 1;
    attribute mti_svvh_generic_type of Addr_Depth : constant is 1;
end RegisterFile_tb;
