//
// Test Bench Module CatRecognizer_lib.Neuron_tb.Neuron_tester
//
// Created:
//          by - amitb.UNKNOWN (DESKTOP-GIFQ7HQ)
//          at - 20:02:59 21/11/2018
//
// Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
//
`resetall
`timescale 1ns/10ps

module Neuron_tb;

// Local declarations

// Internal signal declarations
wire [7:0]  x;
wire [15:0] w;
wire [31:0] out;


Neuron NeurontestNeuron(
   .x   (x),
   .w   (w),
   .out (out)
);

Neuron_tester NeurontestNeuron_tester(
   .x   (x),
   .w   (w),
   .out (out)
);

endmodule // Neuron_tb


