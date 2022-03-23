module Adder (
  input  logic [7:0] a, b,
  output logic [8:0]c 
);

assign c = a + b; // add a and b and send result in c
  
endmodule 