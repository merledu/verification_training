/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Wishah Naseer - Verification	Engineer                                               //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    20-MARCH-2022                                                                       //
// Design Name:    SV OOP Practice                                                                     //
// Module Name:    Example 03.sv                                                                       //
// Project Name:   SV OOP Training                                                                     //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     - This code helps to understand what happens when any object is not pointed by any of the       //
//       handle                                                                                        //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

module top();  
	class Animal;  //class declaration
    //property 
    int age;
    string name;

    //constructor method
    function new();
      age = 1;
      name = "Dog";
    endfunction

    //another method
    function void print();
    $display("Animal : '%s' age = %a0d", name, age);
    endfunction
    
  endclass : Animal

Animal a_h, b_h; //handle to Animal Object

initial begin 
	a_h = new();  //stores the object new() in handle a_h //a_h is a handle to animal0 object
  a_h = new();  //create a new object an store in same handle that was used previously //a_h is handle for Animal1
	              //Animal0 is is now a garbage object as no handle points to it
  a_h = null;   //cleans up the handle a_h, Animal1 object is also garbage now
  a_h = new();  //creates new object and stores in a_h //a_h is a handle to Animal2 now
  b_h = a_h;    //saves a copy of a_h in b_h 
                //both a_h and b_h points to same object Animal2 now
  b_h = null;   // b_h handle is set to null now but a_h still points Animal2 handle
end
endmodule
