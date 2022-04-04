/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      M.Uzair Qureshi								                                                     //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    08-MARCH-2022                                                                       //
// Design Name:    SV OOP Implementation                                                               //
// Module Name:    extern_func.sv                                                                      //
// Project Name:   SV OOP Training				                                                             //
// Language:       SystemVerilog			                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     -This code helps to understand about how the functions cam be declared outside the class.       //
//       				                                                                                       //
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