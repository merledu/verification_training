/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Wishah Naseer - Verification	Engineer                                               //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    31-MARCH-2022                                                                       //
// Design Name:    SV OOP Practice                                                                     //
// Module Name:    disable_specific_fork.sv                                                            //
// Project Name:   SV OOP Training                                                                     //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//           This modules explains how disable_specifc_thread works.                                   //
//                                                                                                     //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

module disable_specific_thread;
 
  initial begin
    $display("DISABLE_SPECIFIC_THREAD EXAMPLE");

    fork
      begin : A1
        $display($time,"Thread 1");
        #30;
        $display($time,"Thread 2");
      end
 
      begin : B1
        $display($time,"Thread 3");
        #15;
        $display($time,"Thread 4");
      end
    join_any
         
    disable A1;
 
    $display("END OF DISABLE_SPECIFIC_THREAD");
  
  end
endmodule