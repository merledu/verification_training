module top();  
  class Mouth;
    int teeth;
    function new(int teeth);
      this.teeth = teeth;
    endfunction
  endclass : Mouth

	class Animal;  
    Mouth m_h;
    int age;

    function new(int teeth, age);
      m_h = new(teeth);
      this.age = age;
    endfunction
    
  endclass : Animal

  Animal a_h,b_h;              
  
  initial begin
    a_h = new(.teeth(2),.age(5));         
    b_h = new a_h;              
    b_h.age = 9;                
    b_h.m_h.teeth =4;
    $display(a_h.age,a_h.m_h.teeth, b_h.age, b_h.m_h.teeth); 
  end

endmodule