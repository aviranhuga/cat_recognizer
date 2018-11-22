//
// Test Bench Module CatRecognizer_lib.NeuronCalculator_tb.NeuronCalculator_tester
//
// Created:
//          by - amitb.UNKNOWN (DESKTOP-GIFQ7HQ)
//          at - 19:30:40 21/11/2018
//
// Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
//
`resetall
`timescale 1ns/10ps

module NeuronCalculator_tb;

// Local declarations
parameter DATA_WIDTH = 24;
parameter Addr_Depth = 12;
parameter Weight_Percision = 5;

// Internal signal declarations
wire [DATA_WIDTH - 1:0] x;
wire [DATA_WIDTH - 1:0] b;
wire [3*Weight_Percision - 1:0] w;
wire                   clock;
wire                    reset;
wire                    enable;
wire                    get_result;
wire                    out;


NeuronCalculator #(DATA_WIDTH,Addr_Depth) NeuronCalculatortestNeuronCalculator(
   .x          (x),
   .b          (b),
   .w          (w),
   .clock      (clock),
   .reset      (reset),
   .enable     (enable),
   .get_result (get_result),
   .out        (out)
);

NeuronCalculator_tester #(DATA_WIDTH,Addr_Depth) NeuronCalculatortestNeuronCalculator_tester(
   .x          (x),
   .b          (b),
   .w          (w),
   .clock      (clock),
   .reset      (reset),
   .enable     (enable),
   .get_result (get_result),
   .out        (out)
);

endmodule // NeuronCalculator_tb


