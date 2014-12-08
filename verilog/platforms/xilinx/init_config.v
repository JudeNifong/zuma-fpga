// megafunction wizard: %ROM: 1-PORT%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: altsyncram 

// ============================================================
// File Name: init_config.v
// Megafunction Name(s):
// 			altsyncram
//
// Simulation Library Files(s):
// 			altera_mf
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 11.1 Build 173 11/01/2011 SJ Full Version
// ************************************************************


//Copyright (C) 1991-2011 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module fixed_config (
  address_in,
	clock,
	q);

  input   [31:0]  address_in;
	input	          clock;
	output	[31:0]  q;

  // (2^lut_inputs times Num_config_stages)
  reg [31:0] ram[0:(2**6)*60];
  reg [31:0] q;

  // Initializing BlockRAM from external datafile
  initial
  begin
    //$readmemh("output.hex.mif",ram,0,(2**6)*80);
    $readmemh("output.hex.mif",ram);
  end
  
  always@(posedge clock)
  begin
    q = ram[address_in];
  end



endmodule
