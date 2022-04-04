/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Rehan Ejaz - Verification                                                           //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date: 20.03.2022                                                                             //
// Design Name: Parametrized class example                                                             //
// Module Name: Top                                                                                    //
// Project Name:   SystemVerilog OOP Training                                                          //
// Language:       SystemVerilog - OOP                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//  Class vector to demonstrate a parametrized class and its use                                       //
//                                                                                                     //
//                                                                                                     //                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////
class Vector #(parameter SIZE = 32);
  bit [SIZE-1:0] data;
endclass

module Top ();
  Vector a32_h;
  Vector #(10) a10_h;
  Vector #(.SIZE(64)) a64_h;

  initial begin
    a32_h = new();
    a32_h.data = 'd23;
    $display("data=%0d",a32_h.data);
  end
endmodule