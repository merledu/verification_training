class animal;
    int age;

    function new();
      age = 0;
    endfunction

    task growold (int t);
      repeat (t);
      #1s age++;
    endtask
  endclass 