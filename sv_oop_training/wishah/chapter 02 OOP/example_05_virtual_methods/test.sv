module test();
import pkg::*;

transaction t7_h,t8_h;
BadTr b8_h;

initial begin
  t7_h = new();
  t7_h.calcCsm();

  b8_h = new();
  b8_h.badCsm = 1;
  b8_h.calcCsm();

  t8_h = b8_h;
  t8_h.calcCsm();
end

endmodule