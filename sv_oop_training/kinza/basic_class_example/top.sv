/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Kinza Qamar Zaman - Verification                                                    //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    14-MARCH-2022                                                                       //
// Design Name:    top                                                                                 //
// Module Name:    top.sv                                                                              //
// Project Name:                                                                                       //
// Language:       SystemVerilog - OOP                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     - This top module is used to construct the class                                                //
//       .....                                                                                         //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

module top;
`include "animal.sv"

initial begin
	animal a_h ; //Animal handle, pointer to animal object
	a_h = new(); //Allocates memory and makes animal object
	a_h.print();
	a_h.growOld(3);
	a_h.name = "ABC";
	a_h.print();
end

endmodule