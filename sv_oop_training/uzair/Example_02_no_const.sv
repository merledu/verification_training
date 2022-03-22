module top();
  class Animal;
    int age;
    string name;
  
    function void print();
      $display("Animal = %s and age = %d",name,age),
    endfunction
  endclass

  Animal a_h;

  initial begin
      a_h = new();
      a_h.age = (3);
      a_h.name = "Cat";
      a_h.print();
  end
endmodule