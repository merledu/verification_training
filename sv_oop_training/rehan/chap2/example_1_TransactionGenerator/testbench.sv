module testbench ();
  import pkg::*;

  Transaction tr_h;
  BadTr b_h;
  initial begin
    tr_h  = new();
    tr_h.calcCsm();
    tr_h.print();
    b_h = new();
    b_h.calcCsm();
    b_h.print();
    b_h.badCsm = 1;
    b_h.calcCsm();
    b_h.print();
    $display(b_h.badCsm);
  end
  
endmodule