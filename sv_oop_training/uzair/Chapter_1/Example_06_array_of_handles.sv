/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      M.Uzair Qureshi								                                                     //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    08-MARCH-2022                                                                       //
// Design Name:    SV OOP Implementation                                                               //
// Module Name:    Example_06_array_of_handles.sv                                                      //
// Project Name:   SV OOP Training				                                                             //
// Language:       SystemVerilog			                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     -This code helps to understand about how to make array of handles.                       			 //
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
    endfunction //new()

    function void print();
      $display("animal = %s and age = %d",name,age);
    endfunction
  endclass //Animal

  Animal a_h[4];

  initial begin
    foreach (a_h[i]) begin
      a_h[i] = new($sformatf("Cat%0d",i ),i);
    end

    foreach (a_h[i]) begin
      $display("a_h[%0d] = %p", i , a_h[i]); 
    end

  end

endmodule