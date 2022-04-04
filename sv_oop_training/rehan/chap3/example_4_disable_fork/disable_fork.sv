/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:       MICRO-ELECTRONICS RESEARCH LABORATORY                                                //
//                                                                                                     //
// Engineers:     Rehan Ejaz - Verification                                                            //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:   4.04.2022                                                                            //
// Design Name:   Disable Fork                                                                         //
// Module Name:   disable_fork                                                                         //
// Project Name:  SystemVerilog OOP Training                                                           //
// Language:      SystemVerilog - OOP                                                                  //
//                                                                                                     //
// Description:                                                                                        //
//  Disable Fork example implemented to understand how to disable only intended fork child             //
//                                                                                                     //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////
module disable_fork;
 initial begin
  fork
    //Process-a
    begin
      $display("%d    Process-a Started",$time);
      #55;
      $display("%d    Process-a Finished",$time);
    end 
  join
 end

  initial begin
    $display("-----------------------------------------------------------------");
    fork begin
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
    $display("%d    Outside Fork-Join_none",$time);
    // $display("                        Waiting 21ns");
    $display("%d    Disabling Fork",$time);
    disable fork;
    // $display("                        Waiting until fork ends");
    // wait fork;
    // #21;
    end
    join
    $display("-----------------------------------------------------------------");
    
  end
endmodule