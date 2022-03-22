/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Wishah Naseer - Verification	Engineer                                               //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    20-MARCH-2022                                                                       //
// Design Name:    SV OOP Practice                                                                     //
// Module Name:    Example 14.sv                                                                       //
// Project Name:   SV OOP Training                                                                     //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     - This code helps to understand how to do deep copy using only single step not in two steps     //
//       in object refering to another object. This is done by clone() function.                       //
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