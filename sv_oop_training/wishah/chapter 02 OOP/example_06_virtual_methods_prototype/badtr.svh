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

  virtual function void copy (transaction rhs_h);
    BadTr b_h;
    if ( ! $cast(b_h, rhs_h)) $fatal();
      super.copy (rhs_h);
      badCsm = b_h.badCsm;
    endfunction

  virtual function transaction clone();
    badtr b_h;
    b_h = new();
    clone = b_h;
    clone.copy(this);
  endfunction

endclass
