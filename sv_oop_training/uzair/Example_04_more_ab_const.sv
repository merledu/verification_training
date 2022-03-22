module top();
  class Animal;
    int age;
    string name;


    function new();
      age = 3;
      name = "Cat";      
    endfunction

    function void print();
      $display("Animal = %s and age = %d",name,age);      
    endfunction
  endclass

  Animal a_h;

  initial begin
    a_h = new();
    a_h.print();
  end

endmodule