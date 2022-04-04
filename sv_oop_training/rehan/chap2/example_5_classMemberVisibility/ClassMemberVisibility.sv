module testbench ();
import pkg::*;

Animal a_h;
Cat b_h;
initial begin
  a_h = new();
  b_h = new();
  a_h.print();
  b_h.print();

end  
endmodule