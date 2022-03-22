module extern();
  class Animal;
    string name;
    int age;
    extern function new(string name = "Cat" ,int age = 3);
    extern function void print;
  endclass //Animal

  function Animal::new(string name = "Cat" , int age = 3);
      this.name = name;
      this.age = age;
  endfunction //new()   

  function Animal::print();
      $display("Animal = %s and age = %d",name,age);
  endfunction //print()

endmodule