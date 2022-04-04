/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Rehan Ejaz - Verification                                                           //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date: 20.03.2022                                                                             //
// Design Name: Bad transaction class                                                                  //
// Module Name:                                                                                        //
// Project Name:   SystemVerilog OOP Training                                                          //
// Language:       SystemVerilog - OOP                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//  Bad transaction class that extends the transaction class and corrupts the checksum                 //
//                                                                                                     //
//                                                                                                     //                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////
class BadTr extends Transaction;
  bit badCsm; // Corrupt the CSM 
  // override existing Methods
 
  function void calcCsm();
    super.calcCsm();       // Compute checksum
    if(badCsm) csm = ~csm; // Corrupt if bad
  endfunction
  
  function void print();
    $write("BadTr: badCsm=%b ", badCsm);
    super.print();
  endfunction

	function void copy(Transaction rhs_h);
    BadTr b_h;
    if($cast(b_h, rhs_h)); $fatal();
    super.copy(rhs_h);
    badCsm = b_h.badCsm;
  endfunction

  function Transaction clone();
    BadTr b_h;
    b_h = new();
    clone = b_h;
    clone.copy(this);
  endfunction

endclass