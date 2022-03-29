/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Wishah Naseer - Verification	Engineer                                               //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    28-MARCH-2022                                                                       //
// Design Name:    SV OOP Practice                                                                     //
// Module Name:    badtr.sv                                                                            //
// Project Name:   SV OOP Training                                                                     //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     - Bad Transaction class                                                                         //
//                                                                                                     //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

class badtr extends transaction;
  bit badCsm; 
 
  function void calcCsm();
    super.calcCsm();       
    if(badCsm) csm = ~csm; 
  endfunction
  
  function void print();
    $write("badtr: badCsm=%b ", badCsm);
    super.print();
  endfunction

	function void copy(badtr rhs_h);
    badCsm = rhs_h.badCsm;
  endfunction

  function transaction clone();
    badtr b_h;
    b_h = new();
    clone = b_h;
    clone.copy(this);
  endfunction

endclass
