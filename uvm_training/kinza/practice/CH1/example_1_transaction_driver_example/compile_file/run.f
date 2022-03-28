/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Kinza Qamar Zaman - Verification                                                    //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    14-MARCH-2022                                                                       //
// Design Name:    Random transaction item                                                             //
// Module Name:    run.f                                                                               //
// Project Name:   Random sequence item example                                                        //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//         -  This file contain names of the files to be compiled, elaborate and simulate.             //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

-64

-uvmhome $UVMHOME

// compile files
top.sv            // compile top level module

//For simulating on Xcelium SimVision GUI mode, uncomment the below line
//-access +rwc -gui

//TEST_NAME
//+UVM_TESTNAME=tx_test 

//Seed randomization
-svseed random