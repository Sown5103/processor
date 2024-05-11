`timescale 1ns / 1ps

module Mux21_32_testbench;

  reg [31:0] data0, data1;
  reg select;
  wire [31:0] output_data;

  // Instantiate Mux21_32 module
  Mux21_32 uut (
    .data0(data0),
    .data1(data1),
    .select(select),
    .output_data(output_data)
  );



  // Stimulus
  initial begin


 
    data0 = 32'h12345678;
    data1 = 32'h87654321;
    select = 0;
    #10;
    select = 1;
    #10;
    select = 0;
    #10;

    $stop;
  end


endmodule
