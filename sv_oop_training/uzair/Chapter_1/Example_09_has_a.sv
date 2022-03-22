module top();  
  class Mouth;
    int teeth;
    function new(int teeth);
      this.teeth = teeth;
    endfunction
  endclass : Mouth

	class Animal;  
    Mouth m_h;

    function new(int teeth);
      m_h = new(teeth);
    endfunction
    
  endclass : Animal

Animal a_h;
initial begin
  a_h = new(4);
  $display("number of teeth = %0d", a_h.m_h.teeth);
end

endmodule