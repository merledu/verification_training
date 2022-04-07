/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Wishah Naseer - Verification	Engineer                                               //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    31-MARCH-2022                                                                       //
// Design Name:    SV OOP Practice                                                                     //
// Module Name:    fork_join_any.sv                                                                    //
// Project Name:   SV OOP Training                                                                     //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//           This modules explains how fork_join_any works. In fork_join_any parent statement waits    //
//           for any one of the thread from muliple threads, as any one thread completes parent        //
//           statement also completes its process                                                      //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

module fork_join_any;
 
  initial begin
    
    $display("FORK_JOIN_ANY EXAMPLE");
    
    fork
      begin
        #20 $display($time,"Thread 1");
        #25 $display($time,"Thread 2");
      end
      begin
        #10 $display($time,"Thread 3");
        #2  $display($time,"Thread 4");
      end
    join_any
       #4  $display($time,"PARENT STATEMENT 1");
       #3  $display($time,"PARENT STATEMENT 2");
 
    $display("FORK_JOIN_ANY ENDED");
    
  end
endmodule