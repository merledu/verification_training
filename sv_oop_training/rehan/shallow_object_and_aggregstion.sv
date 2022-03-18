`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Rehan Ejaz - Verification                                                           //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    18-MARCH-2022                                                                       //
// Design Name:    use of this                                                                         //
// Module Name:    use_of_this.sv                                                                      //
// Project Name:   SystemVerilog OOP Training                                                          //
// Language:       SystemVerilog - OOP                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//  Shallow object copy is implemented and aggeregation is used it is analyzed that for aggregation    //
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
			// Properties (Variables)
		int age;
		// Constructor Method
		function new(int age,
                     teeth);
      this.age  = age;
      m_h = new(teeth); // this.age shows that the age is from the class property
		endfunction //new()
		// More methods
		function void print();
			$display("Animal: '%0d' age=%0d",m_h.teeth, age);        
		endfunction

	endclass //Animal

	Animal a_h, // handle for object 1
         b_h; // handle for second object

	initial begin
		a_h = new(.age(1), .teeth(3)); // creating 
    b_h = new a_h;
    a_h.print();
    b_h.print();
    a_h.age = 2;
    a_h.print();
    b_h.print();
    b_h.m_h.teeth = 32;
    a_h.print();
    b_h.print();
	end

endmodule