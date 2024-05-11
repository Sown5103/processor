module Mux21_5 (
  input wire [4:0] data0,
  input wire [4:0] data1,
  input wire select,
  output reg [4:0] output_data
);

always @(*)
begin
  if (select)
    output_data <= data1;
  else
    output_data <= data0;
end

endmodule