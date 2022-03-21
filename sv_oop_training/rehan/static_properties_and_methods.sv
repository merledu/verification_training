`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Rehan Ejaz - Verification                                                           //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    21-MARCH-2022                                                                       //
// Design Name:    static properties and methods                                                       //
// Module Name:    static_properties_and_methods.sv                                                    //
// Project Name:   SystemVerilog OOP Training                                                          //
// Language:       SystemVerilog - OOP                                                                 //
//                                                                                                     //
// Description:                                                                                        //
// How to declare and use static properties and methods                                                //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////
module top();

  class Animal;
		int age;
		string name;
    static string farmer = "Fred"; 
    // Constructor Method
		function new();
      age = 0;
      name = "";
		endfunction //new()
	endclass //Animal

	Animal a_h, // handle for object 1
         b_h; // handle for second object

  initial $display("The farmer for all animals is %s", Animal::farmer);  // Displaying static property without object.

	initial begin
		a_h = new();
    a_h.farmer = "Maria";
    b_h = new();
    b_h = new();
    $display("The farmer of object a is %s and farmer of object b is %s",a_h.farmer,b_h.farmer);
	end

endmodule