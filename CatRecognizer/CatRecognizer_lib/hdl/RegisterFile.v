//
// Verilog Module CatRecognizer_lib.RegisterFile
//
// Created:
//          by - amitb.UNKNOWN (DESKTOP-GIFQ7HQ)
//          at - 15:41:10 17/11/2018
//
// using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
//

`resetall
`timescale 1ns/10ps
module RegisterFile(clock, address,en_write,en_read,data_in,data_out);
  parameter DATA_WIDTH = 24;
  parameter Addr_Depth = 12;
  
  input wire clock,en_write,en_read;
  input [Addr_Depth-1:0] address;
  input [DATA_WIDTH-1:0] data_in;
  output [DATA_WIDTH-1:0] data_out;
 // output [(2**Addr_Depth)*24-1:0] temp_data_out;/////////////////////////////////////////////////
  
// Register file storage
reg [DATA_WIDTH-1:0] registers[(2**Addr_Depth)-1:0];
reg [DATA_WIDTH-1:0] out_val;
//reg [(2**Addr_Depth)*24-1:0] temp_regs_out; /////////////////////////////////////////////
//reg [23:0] temp;
//integer index;
// Read and write from register file

always @(posedge clock)
begin
  //temp_regs_out[23:0] <= registers[1];
	//temp_regs_out[47:24] <= registers[2];
	
	// for(index = 0; index < (2**Addr_Depth)*24; index = index + 1) 
	//	begin 
	//		temp_regs_out[24*index+:24] <= registers[index];
	//	end
	
	
    if (en_write)
        registers[address] <= data_in;//write to register
    else if(en_read)
        out_val <= registers[address];//read from register
    else 
        out_val <= {DATA_WIDTH{1'bz}};//give nothing in output if not requested
		
	
	
end
//final assignment

//assign temp_data_out = temp_regs_out;
assign data_out = out_val;//give the output



endmodule
