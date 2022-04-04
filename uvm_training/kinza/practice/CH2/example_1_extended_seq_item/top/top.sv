/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Kinza Qamar Zaman - Verification                                                    //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    17-MARCH-2022                                                                       //
// Design Name:    extended transaction item                                                           //
// Module Name:    top.sv                                                                              //
// Project Name:   tx_dst_fixed is extended from tx_item generate transaction for fixed dst            //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//             Top module is responsible to run tx_Test. We pass tx_test as a UVM_TESTNAME on          //
// 			   		 the commmand line. run_test() gets the name of the test from the commandline            //
//             and execute uvm_phases.		                                                             //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

module top;
    `include "uvm_macros.svh" //Includes uvm macros utility
    import uvm_pkg::*;       //import uvm base classes
    `include "tx_item.sv"
    `include "tx_dst_fixed.sv"
    `include "tx_sequence.sv"
    `include "tx_driver.sv"
    `include "tx_agent.sv"
    `include "tx_env.sv"
    `include "tx_test.sv"

    initial begin
        run_test();        // run_test Start execution of uvm phases
    end 

endmodule 

