/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Rehan Ejaz - Verification                                                           //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date: 4.04.2022                                                                              //
// Design Name: Animal Class                                                                           //
// Module Name:                                                                                        //
// Project Name:   SystemVerilog OOP Training                                                          //
// Language:       SystemVerilog - OOP                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//  Animal class with different types of member visibility                                             //
//                                                                                                     //
//                                                                                                     //                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////
class Animal;
  protected int age;
  string name;
  local int weight;

  function new();
    weight = 23;
    age  = 3      ;
    name = "Fluffy";
  endfunction

  function void print();
    $display("Age=%0d Name='%0s' Weight = %0d",age,name,weight);  
  endfunction

endclass