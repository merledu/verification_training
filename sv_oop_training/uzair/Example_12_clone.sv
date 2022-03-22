module top(); 
	class Animal;  
    int age;

    function new(int age);
      this.age = age;
    endfunction
    
    
    function Animal clone();
      clone = new(0);
      clone.copy(this);
    endfunction

    function void copy(Animal rhs_h);
      age = rhs_h.age;
    endfunction

  endclass : Animal

  Animal a_h,b_h;
  initial begin
    a_h = new (.age(3));
    b_h = a_h.clone();
    $display(a_h.age, b_h.age);              
  end 
endmodule