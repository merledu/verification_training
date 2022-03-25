/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      M.Uzair Qureshi								                                                     //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    08-MARCH-2022                                                                       //
// Design Name:    SV OOP Implementation                                                               //
// Module Name:    Example_07_garbage_objects.sv                                                       //
// Project Name:   SV OOP Training				                                                             //
// Language:       SystemVerilog			                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     -This code helps to understand that what happens when no handle is pointed to any object. 			 //
//       				                                                                                       //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////
module top();
  class Animal;
    int age;
    string name;

    function new();
      age = 3;
      name = "Cat";  
    endfunction //new()

    function void print();
      $display("Animal : '%s' age = %a0d", name, age);
    endfunction
  endclass //Animal

  Animal a_h;
  Animal b_h;

  initial begin
    a_h = new();
    
    b_h = a_h;

    a_h = null;
  end
endmodule