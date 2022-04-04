/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      M.Uzair Qureshi								                                                     //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    08-MARCH-2022                                                                       //
// Design Name:    SV OOP Implementation                                                               //
// Module Name:    Example_09_has_a.sv                                                                 //
// Project Name:   SV OOP Training				                                                             //
// Language:       SystemVerilog			                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     -This code helps to understand how a object can refer to another object.          			         //
//       				                                                                                       //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////
module top();  
  class Mouth;
    int teeth;
    function new(int teeth);
      this.teeth = teeth;
    endfunction
  endclass : Mouth

	class Animal;  
    Mouth m_h;

    function new(int teeth);
      m_h = new(teeth);
    endfunction
    
  endclass : Animal

Animal a_h;
initial begin
  a_h = new(4);
  $display("number of teeth = %0d", a_h.m_h.teeth);
end

endmodule