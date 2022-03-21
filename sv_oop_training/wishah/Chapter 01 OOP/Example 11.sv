/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Wishah Naseer - Verification	Engineer                                               //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    20-MARCH-2022                                                                       //
// Design Name:    SV OOP Practice                                                                     //
// Module Name:    Example 09.sv                                                                       //
// Project Name:   SV OOP Training                                                                     //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     - This code helps to understand how to shallow copy when an object can refer to another object  //
//       same objects.....                                                                             //
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
  endclass : Mouth

	class Animal;  
    Mouth m_h;
    int age;

    function new(int teeth, age);
      m_h = new(teeth);
      this.age = age;
    endfunction
    
  endclass : Animal

  Animal a_h,b_h;              //Handles
  //b_h is a new object with same properties of a_h
  initial begin
    a_h = new(.teeth(2),.age(5));         //construct animal object
    b_h = new a_h;              //construct new object and copy the values from a_h
    b_h.age = 9;                //change age property in new object
    b_h.m_h.teeth =4;
    $display(a_h.age,a_h.m_h.teeth, b_h.age, b_h.m_h.teeth); //a_h and b_h refers to separate objects
  end

endmodule