/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Wishah Naseer - Verification	Engineer                                               //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    31-MARCH-2022                                                                       //
// Design Name:    SV OOP Practice                                                                     //
// Module Name:    fork_join_none.sv                                                                   //
// Project Name:   SV OOP Training                                                                     //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//           This modules explains how fork_join_none works. In  fork_join_none parent statement do not//
//           waits for child threads to complete first, parent ststement executes before threads end.  //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

module fork_join_none;

  initial begin
    
    $display("FORK_JOIN_NONE EXAMPLE");
    
    fork
        #15 $display($time,"Thread 1");
        #5  $display($time,"Thread 2");
        #10 $display($time,"Thread 3");
    join_none
      
        #2  $display($time,"PARENT STATEMENT 1");
        #12 $display($time,"PARENT STATEMENT 2");
 
    $display("FORK_JOIN_NONE ENDED");
  end
endmodule