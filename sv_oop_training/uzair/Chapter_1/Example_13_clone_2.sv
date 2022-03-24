/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      M.Uzair Qureshi								                                                     //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    08-MARCH-2022                                                                       //
// Design Name:    SV OOP Implementation                                                               //
// Module Name:    Example_13_clone_2.sv                                                               //
// Project Name:   SV OOP Training				                                                             //
// Language:       SystemVerilog			                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     -This code helps to understand about how aggregated class can also be cloned.                   //
//       				                                                                                       //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////
module top(); 
  class Mouth;
    int teeth;

    function new(int teeth);
      this.teeth = teeth;
    endfunction

    function void copy(Mouth rhs_h);
      teeth = rhs_h.teeth;
    endfunction
  endclass : Mouth

	class Animal;  
    int age;
    Mouth m_h;

    function new(int age, teeth);
      this.age = age;
      m_h = new(teeth);
    endfunction
        
    function Animal clone();
      clone = new(0,0);
      clone.copy(this);
    endfunction

    function void copy(Animal rhs_h);
      age = rhs_h.age;
      m_h.copy(rhs_h.m_h);
    endfunction

  endclass : Animal

  Animal a_h,c_h;

  initial begin
    a_h = new (.age(1), .teeth(1));
    c_h = a_h.clone();
    c_h.m_h.teeth = 32;
    $display(a_h.m_h.teeth, c_h.m_h.teeth);              
  end 
endmodule