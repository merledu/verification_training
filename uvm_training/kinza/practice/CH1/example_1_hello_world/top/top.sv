///////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                             //
//                                                                                                   //
// Engineers:      Kinza Qamar Zaman - Verification                                                  //
//                                                                                                   //
// Additional contributions by:                                                                      //
//                                                                                                   //
// Create Date:    14-Mar-2022                                                                       //
// Design Name:    hello_test                                                                        //
// Module Name:    top.sv                                                                            //
// Project Name:   Top module to run hello_test                                                      //
// Language:       SystemVerilog - UVM                                                               //
//                                                                                                   //
// Description:                                                                                      //
//             Top module is responsible to run hello_test. We pass hello_test as a UVM_TESTNAME on  //
// 			   the commmand line. run_test() gets the name of the test and execute uvm_phases.		 //
// Revision Date:                                                                                    //
//                                                                                                   //
///////////////////////////////////////////////////////////////////////////////////////////////////////

module top ;
	import uvm_pkg::*;
	import hello_pkg::*;
	initial begin
		run_test(); // run_test Start execution of uvm phases
	end 
endmodule 