/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      M.Uzair Qureshi								                                                     //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    08-MARCH-2022                                                                       //
// Design Name:    SV OOP Implementation                                                               //
// Module Name:    Example_02_no_const.sv                                                              //
// Project Name:   SV OOP Training				                                                             //
// Language:       SystemVerilog			                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     -This code helps to understand about constructors and when constructor is not defined					 //
//       				                                                                                       //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////
module top();
  class Animal;
    int age;
    string name;
  
    function void print();
      $display("Animal = %s and age = %d",name,age),
    endfunction
  endclass

  Animal a_h;

  initial begin
      a_h = new();
      a_h.age = (3);
      a_h.name = "Cat";
      a_h.print();
  end
endmodule