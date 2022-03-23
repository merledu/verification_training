/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Kinza Qamar Zaman - Verification                                                    //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    14-MARCH-2022                                                                       //
// Design Name:    hello_test                                                                          //
// Module Name:    run.f                                                                               //
// Project Name:   Basic hello_world UVM based Example                                                 //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//         -  This file contain names of the files to be compiled, elaborate and simulate.             //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

-64

-uvmhome $UVMHOME

+UVM_TESTNAME=hello_world
// compile files

top.sv            // compile top level module

//For simulating on Xcelium SimVision GUI mode, uncomment the below lines
//-access +rwc -gui