/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Kinza Qamar Zaman - Verification                                                    //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    18-MARCH-2022                                                                       //
// Design Name:    mouth Class                                                                         //
// Module Name:    mouth.sv                                                                            //
// Project Name:   Shallow copy Example                   					                                   //
// Language:       SystemVerilog - OOP                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//            Example of how the copy constructor does not work well on aggregated object.             //
// Revision Date:                                                                                      //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

class mouth;

	int teeth;

function new(int teeth);
	this.teeth = teeth;
endfunction

endclass