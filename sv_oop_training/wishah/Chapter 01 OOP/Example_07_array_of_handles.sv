/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Wishah Naseer - Verification	Engineer                                               //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    20-MARCH-2022                                                                       //
// Design Name:    SV OOP Practice                                                                     //
// Module Name:    Example 07.sv                                                                       //
// Project Name:   SV OOP Training                                                                     //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     - This code helps to understand how we can make an array of handles pointing different or       //
//       same objects.                                                                                 //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

module top();  
class Animal;  //class declaration

  //property => contains information about objet
  int age;
  string name;

  //constructor method
  function new(string name, int age);
    this.age = age;
    this.name = name;
  endfunction

  //more methods 
  function void print();
  $display("Animal : '%s' age = %a0d", name, age);
  endfunction
  
  task growold (int how_long);
    repeat (how_long);
    #1s age++;
  endtask
endclass : Animal

Animal a_h[4]; //array of handle

initial begin 

  foreach (a_h[i]) begin
  a_h[i] = new($sformatf("Cow%0d",i ),i);
  end
  //%p prints an object as an assignment patern
  foreach (a_h[i]) begin
    $display("a_h[%0d = %p", i , a_h[i]);   // now each handle will point to individual objects of cow
  end

  foreach (a_h[i]) begin
    a_h[i] = a_h[0]; //now every handle will point to the same object that is cow 0.
  end 
end
endmodule