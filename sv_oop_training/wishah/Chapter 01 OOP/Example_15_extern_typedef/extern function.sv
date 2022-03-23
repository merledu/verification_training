/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Wishah Naseer - Verification	Engineer                                               //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    20-MARCH-2022                                                                       //
// Design Name:    SV OOP Practice                                                                     //
// Module Name:    Example 15.sv                                                                       //
// Project Name:   SV OOP Training                                                                     //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     - This code helps to understand how to use extern function                                      //
//                                                                                                     //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

module extern();
  class Animal;
    string name;
    int age;
    extern function new(string name = "Cat" ,int age = 3);
    extern function void print;
  endclass //Animal

  function Animal::new(string name = "Cat" , int age = 3);
      this.name = name;
      this.age = age;
  endfunction //new()   

  function Animal::print();
      $display("Animal = %s and age = %d",name,age);
  endfunction //print()

endmodule