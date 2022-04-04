/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Wishah Naseer - Verification	Engineer                                               //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    20-MARCH-2022                                                                       //
// Design Name:    SV OOP Practice                                                                     //
// Module Name:    Example 16.sv                                                                       //
// Project Name:   SV OOP Training                                                                     //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     - This code helps to understand Static Property                                                 //
//                                                                                                     //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

module top();
  class Animal;
    int age;
    string name;
    static string farmer = "Fred";
  endclass
  initial $display("the farmer for all animals is %s",Animal::farmer);

  Animal a_h, b_h;
  initial begin
    a_h = new();
    a_h.farmer = "Oliver";
    b_h = new();
    $display("%s %s", a_h.farmer, b_h.farmer);
  end
endmodule