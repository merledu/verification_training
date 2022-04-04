
/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Wishah Naseer - Verification	Engineer                                               //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    31-MARCH-2022                                                                       //
// Design Name:    SV OOP Practice                                                                     //
// Module Name:    wait_fork.sv                                                                        //
// Project Name:   SV OOP Training                                                                     //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//           This modules explains how wait_fork works.                                                //
//                                                                                                     //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

module wait_fork;
 
  initial begin
    $display("WAIT_FORK EXAMPLE");
 
 
    fork
      begin
        $display($time,"Thread 1");
        #15;
        $display($time,"Thread 2");
      end
 
      begin
        $display($time,"Thread 3");
        #30;
        $display($time,"Thread 4");
      end
    join_any
    
    wait fork; //waiting for all active fork threads to be finished
 
      $display("END OF WAIT_FORK");
  end
endmodule