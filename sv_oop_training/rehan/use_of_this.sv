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
//  Animal class implemented in SystemVerilog which helps in understanding the use of this operator    //
//                                                                                                     //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////
module top();
	class Animal;
			// Properties (Variables)
		int age    ;
		string name;
		// Constructor Method
		function new(int    age,
                 string name);
      this.age = age;          // this.age shows that the age is from the class property
      this.name  name;
		endfunction //new()
		// More methods
		function void print();
			$display("Animal: '%s' age=%0d",name, age);        
		endfunction

	endclass           //Animal

  task make_dog();
    Animal dog_h;
    dog_h = new(.age(7), .name("Pup"));
  endtask

	Animal a_h;

	initial begin
		make_dog();    
	end

endmodule