///////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                             //
//                                                                                                   //
// Engineers:      Kinza Qamar Zaman - Verification                                                  //
//                                                                                                   //
// Additional contributions by:                                                                      //
//                                                                                                   //
// Create Date:    14-FEB-2022                                                                       //
// Design Name:    run.f                                                                             //
// Module Name:                                                                                      //
// Project Name:   A single file for compilation                                                     //
// Language:                                                                                         //
//                                                                                                   //
// Description:                                                                                      //
//                                                                                                   //
// Revision Date:                                                                                    //
//                                                                                                   //
///////////////////////////////////////////////////////////////////////////////////////////////////////
-64

-uvmhome $UVMHOME

+UVM_TESTNAME=hello_world
// compile files

hello_world.sv // compile hello_world package
top.sv            // compile top level module
