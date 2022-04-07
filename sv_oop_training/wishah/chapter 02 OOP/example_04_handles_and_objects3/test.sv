/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Wishah Naseer - Verification	Engineer                                               //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    28-MARCH-2022                                                                       //
// Design Name:    SV OOP Practice                                                                     //
// Module Name:    test.sv                                                                             //
// Project Name:   SV OOP Training                                                                     //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     - test for both classes                                                                         //
//                                                                                                     //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////
module test();
import pkg::*;
  transaction t3_h;
  badtr b3_h,b4_h;
  initial begin
    b3_h = new();
    b3_h.badCsm = 1;
    b3_h.print();
    t3_h = b3_h;
    $cast(b4_h,t3_h);
    $display(b4_h.badCsm);
    if (! $cast(b4_h, t3_h))
      $fatal(1,"$cast failed");
  end
endmodule