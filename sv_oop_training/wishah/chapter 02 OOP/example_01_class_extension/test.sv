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
  transaction t_h;
  badtr b_h;
  initial begin
    t_h  = new();
    t_h.calcCsm();
    t_h.print();
    b_h = new();
    b_h.calcCsm();
    b_h.print();
    // b_h.badCsm = 1;
    // b_h.calcCsm();
    // b_h.print();
    $display(b_h.badCsm);
  end
endmodule