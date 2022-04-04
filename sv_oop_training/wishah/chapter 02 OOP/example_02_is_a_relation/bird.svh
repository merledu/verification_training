class bird  extends animal;
  int feathers;
  function new();
    feathers = 0;
  endfunction
  task fly (int a);
    $display("feathers = %0d", feathers);
  endtask
endclass