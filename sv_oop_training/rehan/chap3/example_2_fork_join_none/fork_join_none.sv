/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:       MICRO-ELECTRONICS RESEARCH LABORATORY                                                //
//                                                                                                     //
// Engineers:     Rehan Ejaz - Verification                                                            //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:   4.04.2022                                                                            //
// Design Name:   Fork join None                                                                       //
// Module Name:   fork_join_none                                                                       //
// Project Name:  SystemVerilog OOP Training                                                           //
// Language:      SystemVerilog - OOP                                                                  //
//                                                                                                     //
// Description:                                                                                        //
//  Fork join none example implemented to understand the functionality of fork join none               //
//                                                                                                     //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////
module fork_join_none;
 
  initial begin
    $display("-----------------------------------------------------------------");
    fork
      //-------------------
      //Process-1
      //-------------------
      begin
        $display("%d    Process-1 Started",$time);
        #5;
        $display("%d    Process-1 Finished",$time);
      end
 
      //-------------------
      //Process-2
      //-------------------
      begin
        $display("%d    Process-2 Started",$time);
        #20;
        $display("%d    Process-2 Finished",$time);
      end
    join_none
    $display("%d    Outside Fork-Join_none",$time);
    // $display("                        Waiting 21ns");
    $display("                        Waiting until fork ends");
    wait fork;
    // #21;
    $display("-----------------------------------------------------------------");
    $finish;
  end
endmodule