/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Kinza Qamar Zaman - Verification                                                    //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    18-MARCH-2022                                                                       //
// Design Name:    Animal Class                                                                        //
// Module Name:    top.sv                                                                              //
// Project Name:   Basic SystemVerilog OOP Example                                                     //
// Language:       SystemVerilog - OOP                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//             This is the top file in which we construct the object of animal class and access its    //
//             members.                                                                                //
// Revision Date:                                                                                      //
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