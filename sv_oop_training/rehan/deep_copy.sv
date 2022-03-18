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

    function void copy(Mouth rhs_h);
     teeth = rhs_h.teeth;
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
      m_h = new(teeth); 
		endfunction //new()

		// More methods
    function void print();
			$display("Teeth = %0d age=%0d",m_h.teeth, age);        
		endfunction

    function void copy(Animal rhs_h);
     age = rhs_h.age;
     m_h.copy(rhs_h.m_h); 
    endfunction

	endclass //Animal

	Animal a_h, // handle for object 1
         b_h, // handle for second object
         c_h; // handle for second object

	initial begin
		a_h = new(.age(1), .teeth(3)); // creating new object
		b_h = new(.age(22), .teeth(28)); // creating new object
    c_h = new(.age(0), .teeth(0));
    a_h.print();
    b_h.print();
    c_h.print();
    c_h.copy(b_h);
    c_h.print();
    b_h.m_h.teeth = 11;
    c_h.print();
    b_h.print();
	end

endmodule