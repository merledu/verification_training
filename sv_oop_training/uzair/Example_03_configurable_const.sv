module top();
  class Animal;
    int age;
    string name;

    function new(int age_n,string name_n);
      age = age_n;
      name = name_n;
    endfunction

    function void print();
      $display("Animal = %s and age = %d",name,age);
    endfunction
  endclass

  Animal a_h;

  initial begin
    a_h = new(3,"Cat");
    a_h.print();
  end
endmodule