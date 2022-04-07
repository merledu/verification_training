module stackk();
  class stack #(parameter type T = int);
    local T items[64];
    local int idx = 1;
    function void push(input T val);
    endfunction
    function T pop();
    endfunction
  endclass

  stack inst_stack_h;
  stack #(bit[15:0]) bit16_stack_h;
  stack #(real) real_stack_h;
endmodule