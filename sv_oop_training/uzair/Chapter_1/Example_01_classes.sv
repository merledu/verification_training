module top ();
  class Animal;
    int age;
    string name;

    function new();
      age = 0;
      name = "";
    endfunction

    function void print()
      $display("Animal : %s age = %d",name,age);
    endfunction

    task growold(int how_long);
      repeat (how_long)
      #1 age++;
    endtask
    
  endclass

  Animal a_h;

  initial begin
    a_h = new();
    a_h.name = "Dog";
    a_h.growold = (3);
    a_h.print();
  end  
endmodule