`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Rehan Ejaz - Verification                                                           //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date: 14.03.2022 11:18:36                                                                    //
// Design Name: OOP Animal Class Systemverilog                                                         //
// Module Name: top                                                                                    //
// Project Name:   SystemVerilog OOP Training                                                          //
// Language:       SystemVerilog - OOP                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//  OOP based CLASS to understand basic Classes of system verilog and their properties                 //
//  shallow copy is not okay                                                                           //
//                                                                                                     //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

module top();
	
  class Mouth;
    
    int teeth;

    function new(int teeth);
      this.teeth = teeth;
    endfunction

  endclass // Mouth

  class Animal;
    
    Mouth m_h;
    
    function  new(int teeth);
      m_h = new(teeth);
    endfunction
	
  endclass //Animal

	Animal a_h;

	initial begin
    a_h = new(4); 
    $display("Number of teeth = %0d",a_h.m_h.teeth);
	end

endmodule