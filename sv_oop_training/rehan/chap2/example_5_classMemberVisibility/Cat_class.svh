/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Rehan Ejaz - Verification                                                           //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date: 4.04.2022                                                                              //
// Design Name: Cat Class                                                                              //
// Module Name:                                                                                        //
// Project Name:   SystemVerilog OOP Training                                                          //
// Language:       SystemVerilog - OOP                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//  Extended Cat class with different types of member visibility inheritance                           //
//                                                                                                     //
//                                                                                                     //                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////
class Cat extends Animal;
  int eyes;
  
  function new();
    eyes = 2;
    age = 35;
    // weight = 2;
  endfunction //new()
  function print();
    super.print();
    $display("Eyes =%0d",eyes);
  endfunction
endclass //cat extends Animal;