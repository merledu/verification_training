module top();
  class Animal;
    int age;
    string name;

    function new();
      age = 3;
      name = "Cat";  
    endfunction //new()

    function void print();
      $display("Animal : '%s' age = %a0d", name, age);
    endfunction
  endclass //Animal

  Animal a_h;
  Animal b_h;

  initial begin
    a_h = new();
    
    b_h = a_h;

    a_h = null;
  end
endmodule