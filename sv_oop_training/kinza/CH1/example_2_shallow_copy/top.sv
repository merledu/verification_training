/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Kinza Qamar Zaman - Verification                                                    //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    18-MARCH-2022                                                                       //
// Design Name:    top module                                                                          //
// Module Name:    top.sv                                                                              //
// Project Name:   Shallow copy Example                   					                                   //
// Language:       SystemVerilog - OOP                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//            Example of how the copy constructor does not work well on aggregated object.             //
// Revision Date:                                                                                      //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

module top;

	animal a_h, b_h ; //Animal handle, pointer to animal object
	
	initial begin
		a_h = new(12,"XYZ",36);
		b_h = new a_h;
		$display(" age of a_h = %d , age of b_h = %d \n teeth of a_h = %d , teeth of b_h = %d",a_h.age,b_h.age,a_h.m_h.teeth,b_h.m_h.teeth);
		b_h.m_h.teeth=13; //Changing the teeth property will change the teeth property of a_h handle too
		$display(" age of a_h = %d , age of b_h = %d \n teeth of a_h = %d , teeth of b_h = %d",a_h.age,b_h.age,a_h.m_h.teeth,b_h.m_h.teeth);
	end
	
endmodule