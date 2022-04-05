/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:       MICRO-ELECTRONICS RESEARCH LABORATORY                                                //
//                                                                                                     //
// Engineers:     Rehan Ejaz - Verification                                                            //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:   4.04.2022                                                                            //
// Design Name:   Fork join                                                                            //
// Module Name:   fork_join                                                                            //
// Project Name:  SystemVerilog OOP Training                                                           //
// Language:      SystemVerilog - OOP                                                                  //
//                                                                                                     //
// Description:                                                                                        //
//  Fork join example implemented to understand the functionality of fork join                         //
//                                                                                                     //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////
module fork_join;
 
  initial begin
    $display("-----------------------------------------------------------------");
    fork
      //Process-1
      begin
        $display("%d    Process-1 Started",$time);
        #5;
        $display("%d    Process-1 Finished",$time);
      end 
      //Process-2
      begin
        $display("%d    Process-2 Started",$time);
        #20;
        $display("%d    Process-2 Finished",$time);
      end
    join
    $display("%d    Outside Fork-Join",$time);
    $display("-----------------------------------------------------------------");
    $finish;
  end
endmodule