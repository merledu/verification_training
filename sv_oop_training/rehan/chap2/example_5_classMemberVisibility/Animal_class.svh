class Animal;
  protected int age;
  string name;
  local int weight;

  function new();
    weight = 23;
    age  = 3      ;
    name = "Fluffy";
  endfunction

  function void print();
    $display("Age=%0d Name='%0s' Weight = %0d",age,name,weight);  
  endfunction

endclass