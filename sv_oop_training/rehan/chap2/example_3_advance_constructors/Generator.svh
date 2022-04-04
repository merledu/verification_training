/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Rehan Ejaz - Verification                                                           //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date: 20.03.2022                                                                             //
// Design Name: Generator class                                                                        //
// Module Name:                                                                                        //
// Project Name:   SystemVerilog OOP Training                                                          //
// Language:       SystemVerilog - OOP                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//  Generator class to create multiple transactions through clone method                               //
//                                                                                                     //
//                                                                                                     //                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////
class Generator;
  Transaction blueprint_h, tr_h;

  function new();
    blueprint_h = new(); // default object to be generated for creating clones
  endfunction

  virtual task run();
    for (int i =0; i<10; i++) begin
      tr_h = blueprint_h.clone();
      tr_h.src = i;
      tr_h.calcCsm();
      // drive(tr_h);
      $display("transaction:%0d derived",i);
      $display("Object:%0d Data =%p",i,tr_h);
    end
  endtask

  // task drive(Transaction trans_h);
  // ...
  // endtask

endclass