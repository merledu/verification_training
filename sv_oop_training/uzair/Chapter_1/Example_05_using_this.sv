/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      M.Uzair Qureshi								                                                     //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    08-MARCH-2022                                                                       //
// Design Name:    SV OOP Implementation                                                               //
// Module Name:    Example_05_using_this.sv                                                            //
// Project Name:   SV OOP Training				                                                             //
// Language:       SystemVerilog			                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     -This code helps to understand about constructor can have same local variables property. 			 //
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

  Animal a_h;

  initial begin
    a_h = new(.age(3),.name("Cat"));
    a_h.print();
  end
endmodule