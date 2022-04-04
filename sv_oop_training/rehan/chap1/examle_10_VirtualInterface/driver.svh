/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Rehan Ejaz - Verification                                                           //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date: 20.03.2022 11:18:36                                                                    //
// Design Name: Driver class                                                                           //
// Module Name:                                                                                        //
// Project Name:   SystemVerilog OOP Training                                                          //
// Language:       SystemVerilog - OOP                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//  OOP based CLASS to understand basic Classes of system verilog and their properties                 //
//                                                                                                     //
//                                                                                                     //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

class Driver;  
  
  virtual tb_interface.tb_i_o vif;

  function new(virtual tb_interface.tb_i_o vif);
    this.vif = vif;
  endfunction

  task send_data(input logic [7:0] a, b);
    vif.a <= a;
    vif.b <= b;
  endtask //new()

  endclass //className