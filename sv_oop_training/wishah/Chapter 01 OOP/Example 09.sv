/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Wishah Naseer - Verification	Engineer                                               //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    20-MARCH-2022                                                                       //
// Design Name:    SV OOP Practice                                                                     //
// Module Name:    Example 09.sv                                                                       //
// Project Name:   SV OOP Training                                                                     //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     - This code helps to understand how an object can refer to another object                       //
//       same objects.....                                                                             //
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
