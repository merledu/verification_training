/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Rehan Ejaz - Verification                                                           //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date: 20.03.2022 11:18:36                                                                    //
// Design Name: 8 bit Adder                                                                            //
// Module Name: Adder                                                                                  //
// Project Name:   SystemVerilog OOP Training                                                          //
// Language:       SystemVerilog - OOP                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//  Adder to verify OOP based interface to understand basic Classes of system verilog                  //
//  and their properties                                                                               //
//                                                                                                     //                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////
module Adder (
  input  logic [7:0] a, b,
  output logic [8:0]c 
);

assign c = a + b; // add a and b and send result in c
  
endmodule 