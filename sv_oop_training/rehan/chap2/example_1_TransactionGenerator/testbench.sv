/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Rehan Ejaz - Verification                                                           //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date: 20.03.2022                                                                             //
// Design Name: Testbench                                                                              //
// Module Name:  testbench                                                                             //
// Project Name:   SystemVerilog OOP Training                                                          //
// Language:       SystemVerilog - OOP                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//  testbench file to declare all handles and initiate the testbench                                   //
//                                                                                                     //
//                                                                                                     //                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////
module testbench();
import pkg::*;

  Transaction tr_h;
  BadTr b_h;
  BaseTest c_h;
  BadTest d_h;
  initial begin
    tr_h  = new();
    tr_h.calcCsm();
    tr_h.print();
    b_h = new();
    b_h.calcCsm();
    b_h.print();
    b_h.badCsm = 1;
    b_h.calcCsm();
    b_h.print();
    $display(b_h.badCsm);
    c_h = new();
    c_h.run();
    d_h = new();
    d_h.run();

  end
  
endmodule