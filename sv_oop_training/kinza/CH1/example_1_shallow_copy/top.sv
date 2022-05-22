/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Kinza Qamar Zaman - Verification                                                    //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    15-MARCH-2022                                                                       //
// Design Name:    Animal Class                                                                        //
// Module Name:    top.sv                                                                              //
// Project Name:   Shallow copy Example                   					                                   //
// Language:       SystemVerilog - OOP                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//             This example demonstrate the utilization of copy constructor.									 				 //
// Revision Date:                                                                                      //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

module top;
`include "animal.sv"

	animal a_h, b_h ; //Animal handle, pointer to animal object

	initial begin
		a_h = new(12,"XYZ");
		b_h = new a_h;		// Copy constructor
		$display(a_h.age,b_h.age);
		b_h.age=13;
		$display(a_h.age,b_h.age);
	end
	
endmodule