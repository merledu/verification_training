///////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                             //
//                                                                                                   //
// Engineers:      Kinza Qamar Zaman - Verification                                                  //
//                                                                                                   //
// Additional contributions by:                                                                      //
//                                                                                                   //
// Create Date:    14-FEB-2022                                                                       //
// Design Name:    top                                                                               //
// Module Name:    top.sv                                                                            //
// Project Name:   Top module to run hello_test                                                      //
// Language:       SystemVerilog - UVM                                                               //
//                                                                                                   //
// Description:    This module start the execution of uvm_phases                                     //
//                                                                                                   //
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