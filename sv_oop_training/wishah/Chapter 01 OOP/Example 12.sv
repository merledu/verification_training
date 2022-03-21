/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Wishah Naseer - Verification	Engineer                                               //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    20-MARCH-2022                                                                       //
// Design Name:    SV OOP Practice                                                                     //
// Module Name:    Example 12.sv                                                                       //
// Project Name:   SV OOP Training                                                                     //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     - This code helps to understand how to deep copy when an object can refer to another object     //
	//                                                                                             //
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

    function void copy(Mouth rhs_h);  //rhs_h is a handle to the object to be copied
      teeth = rhs_h.teeth;
    endfunction 
    
  endclass : Mouth

	class Animal;  
    Mouth m_h;
    int age;

    function new(int teeth, age);
      m_h = new(teeth);
      this.age = age;
    endfunction
    
    function void copy(Animal rhs_h); //rhs_h is a handle to the object to be copied
      age = rhs_h.age;
      m_h.copy(rhs_h.m_h);
    endfunction

  endclass : Animal

  Animal a_h,d_h;              

  initial begin
    a_h = new(.teeth(2),.age(5));         //construct animal and mouth object
    d_h = new(.teeth(4),.age(3));         //construct distinction object
    d_h.copy(a_h);                        //call custom method to do a deep copy of a_h
    d_h.m_h.teeth = 9;                    //changing d_h.m_h.teeth doesnot changes a_h.m_h.teeth
    $display(a_h.m_h.teeth, d_h.m_h.teeth);
  end

endmodule
