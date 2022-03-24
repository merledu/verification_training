/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      M.Uzair Qureshi								                                                     //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    08-MARCH-2022                                                                       //
// Design Name:    SV OOP Implementation                                                               //
// Module Name:    Example_08_multi_handles.sv                                                         //
// Project Name:   SV OOP Training				                                                             //
// Language:       SystemVerilog			                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     -This code helps to understand about multiple handles pointing to single object. 			         //
//       				                                                                                       //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////
module top();
  class Animal;
    int age;
    string name;
  
  function new(int age,string name);
    this.age = age;
    this.name = name;
  endfunction

  function void print();
    $display("Animal = %s and age = %d",name,age);    
  endfunction
  endclass

  Animal a1_h;
  Animal a2_h;

  initial begin
    a1_h = new(.age(3),.name("Cat"));
    a2_h = a1_h;
  end
endmodule