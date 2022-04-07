/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Wishah Naseer - Verification	Engineer                                               //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    31-MARCH-2022                                                                       //
// Design Name:    SV OOP Practice                                                                     //
// Module Name:    disable_fork.sv                                                                     //
// Project Name:   SV OOP Training                                                                     //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//           This modules explains how disable_fork works.                                             //
//                                                                                                     //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////


module disable_fork;
 
  initial begin
    $display("DISABLE_FORK EXAMPLE");
 
 
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
    
    fork
      begin
        $display($time,"Thread 5");
        #15;
        $display($time,"Thread 6");
      end
 
      begin
        $display($time,"Thread 7");
        #30;
        $display($time,"Thread 8");
      end
    join_none
    
    disable fork;   //disable all threads in fork
 
    $display("END OF DISABLE_FORK");

  end
endmodule
