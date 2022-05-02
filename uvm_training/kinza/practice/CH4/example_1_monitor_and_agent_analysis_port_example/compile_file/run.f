/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Kinza Qamar Zaman - Verification                                                    //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    20-MARCH-2022                                                                       //
// Design Name:    Analysis port example                                                               //
// Module Name:    run.f                                                                               //
// Project Name:   Monitor and Agent analysis port example   		                                       //
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
+UVM_TESTNAME=tx_test 

//Seed randomization
-svseed random
-64

-uvmhome $UVMHOME

// compile files

top.sv          // compile top level module

