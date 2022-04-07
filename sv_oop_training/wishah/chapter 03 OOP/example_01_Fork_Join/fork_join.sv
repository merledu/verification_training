/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Wishah Naseer - Verification	Engineer                                               //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    31-MARCH-2022                                                                       //
// Design Name:    SV OOP Practice                                                                     //
// Module Name:    fork_join.sv                                                                        //
// Project Name:   SV OOP Training                                                                     //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//           This modules explains how fork_join works. In  fork_join first all the threads in fork    //
//           completes then it moves towards the parent statement after join                           //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////


module fork_join; 
  initial begin
    
    $display($time,"START FORK-JOIN EXAMPLE");
    
    fork
        #15 $display($time,"Thread 1");
        #5  $display($time,"Thread 2");
      begin
        #10 $display($time,"Thread 3");
        #2  $display($time,"Thread 4");
      end
    join
    
      #7  $display($time,"PARENT STATEMENT");
 
    $display($time,"FORK-JOIN ENDED");
  end
endmodule