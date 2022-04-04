class Cat extends Animal;
  int eyes;
  
  function new();
    eyes = 2;
    age = 35;
    // weight = 2;
  endfunction //new()
  function print();
    super.print();
    $display("Eyes =%0d",eyes);
  endfunction
endclass //cat extends Animal;