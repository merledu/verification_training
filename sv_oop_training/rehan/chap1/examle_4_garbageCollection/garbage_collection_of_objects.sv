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
	class Animal;
			// Properties (Variables)
		string name;
		int age    ;
		// Constructor Method
		function new();
			age = 0  ;
			name = "";
		endfunction //new()
		// More methods
		function void print();
			$display("Animal: '%s' age=%0d",name, age);        
		endfunction

		task growOld(input int how_long);
			repeat(how_long)
				#1s age++;
		endtask

	endclass//Animal

	Animal a_h,  // handle a declared
	       b_h;  // handle b declared

	initial begin
		a_h = new();  // Create new object and store handle in a_h
		#10;
		a_h = new();  // Create an object and overwrite previous handle thus previous object is garbage collected
		#10;
		a_h = null;   // handle cleaned up object finished
		#10;
		a_h = new();  // create new object
		#10;
		b_h = a_h;    // b_h pointing to the same object that was pointed by a_h
		#10;   
		a_h = new();  // a_h points to new object  but b_h is still pointing to the object
		#10;
		b_h = new();  // b_h points to new object leaving previous object garbage collected
	end

endmodule