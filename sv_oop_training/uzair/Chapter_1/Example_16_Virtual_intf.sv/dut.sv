module dut(
  input logic [2:0] a_i,
  input logic [2:0] b_i,
  output logic cmp
);

assign cmp = (a_i < b_i)? 1:0;
  
endmodule