module top();
  class Animal;
    int age;
    string name;

    function new(int age,string name);
      this.age = age;
      this.name = name;
    endfunction

    function void print();
      $display("Animal = %s and age = %d",name,age);
    endfunction
  endclass

  Animal a_h;

  initial begin
    a_h = new(.age(3),.name("Cat"));
    a_h.print();
  end
endmodule