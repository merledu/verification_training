class BadTest extends BaseTest;
BadTr badBlue_h;

function new();
  super.new();
  badBlue_h = new();
  badBlue_h.badCsm = 1;
  gen_h.blueprint_h = badBlue_h;
endfunction

endclass