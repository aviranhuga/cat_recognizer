//
// Verilog Module CatRecognizer_lib.CatRecognizer
//
// Created:
//          by - amitb.UNKNOWN (DESKTOP-GIFQ7HQ)
//          at - 15:32:48 17/11/2018
//
// using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
//

`resetall
`timescale 1ns/10ps
module CatRecognizer (PADDR,PENABLE,PSEL,PWDATA,PWRITE,clk,rst,PRDATA,CatRecOut);
  parameter Amba_Word = 24;
  parameter Amba_Addr_Depth = 12;
  parameter Weightrecision = 5;
  input wire PENABLE,PSEL,PWRITE,clk,rst;
  input [Amba_Addr_Depth-1:0] PADDR;
  input [Amba_Word-1:0] PWDATA;
  output[Amba_Word-1:0] PRDATA;
  output CatRecOut;
  
  RegisterFile #(
  .DATA_WIDTH(Amba_Word), 
  .Addr_Depth(Amba_Addr_Depth))
  pixel_mem(
  .clk      ( clk       ), // input
  .rst_n    ( rst_n     ), // input
  .data_rx  ( data_rx_1 ), // input  [9:0]
  .data_tx  ( data_tx   )  // output [9:0]
  );

endmodule
