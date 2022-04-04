module test();
  task makeanimal();
  animal a_h;
  a_h = new();
  while (a_h.age<18) 
    a_h.growold(2);
  endtask
  task showbird();
    bird b_h;
    b_h = new();
    b_h.fly(4);
    $display(b_h.feathers);
    $display(b_h.age);
  endtask
endmodule