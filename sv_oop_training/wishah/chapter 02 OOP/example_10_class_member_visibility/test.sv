module test();
  import pkg::*;
  cat c_h;
  initial begin 
    c_h = new();
    c_h.weight = 6;
  end
endmodule