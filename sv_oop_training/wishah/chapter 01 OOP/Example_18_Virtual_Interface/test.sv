/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Wishah Naseer - Verification	Engineer                                               //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    20-MARCH-2022                                                                       //
// Design Name:    SV OOP Practice                                                                     //
// Module Name:    Example 18.sv                                                                       //
// Project Name:   SV OOP Training                                                                     //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     - This code is the test module with the handle of class and assigning values to constructor     //
//       method.                                                                                       //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

module test(tb_ifc.tb i_o);
  `include "driver.svh"
  Driver drv_h;
  initial begin
    drv_h = new(i_o);
    drv_h.send_data(9,5);
  end
endmodule