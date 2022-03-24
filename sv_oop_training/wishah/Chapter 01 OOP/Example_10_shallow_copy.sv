/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Wishah Naseer - Verification	Engineer                                               //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    20-MARCH-2022                                                                       //
// Design Name:    SV OOP Practice                                                                     //
// Module Name:    Example 10.sv                                                                       //
// Project Name:   SV OOP Training                                                                     //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     - This code helps to understand how to perform shallow object copy                              //
//       same objects.                                                                                 //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

module top();  
	class Animal;  
    int age;

    function new(int age); 
      this.age = age;
    endfunction
    
  endclass : Animal

Animal a_h,b_h;              //Handles
//b_h is a new object with same properties of a_h
initial begin
  a_h = new(.age(5));         //construct animal object
  b_h = new a_h;              //construct new object and copy the values from a_h
  b_h.age = 8;                //change age property in new object
  $display(a_h.age, b_h.age); //a_h and b_h refers to separate objects
end
endmodule
