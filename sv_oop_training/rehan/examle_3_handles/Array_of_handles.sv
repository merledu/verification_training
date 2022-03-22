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
		function new(string name,
                 int    age);
			this.age  = age;
			this.name = name;
		endfunction //new()
		// More methods
		function void print();
			$display("Animal: '%s' age=%0d",name, age);        
		endfunction

		task growOld(input int how_long);
			repeat(how_long)
				#1s age++;
		endtask

	endclass //Animal

	Animal farm_h[4];  //array of handles created 

	initial begin
    
    foreach (farm_h[i]) begin // objects are created and different handles are pointed to them
        farm_h[i] = new($sformatf("Cow%0d",i), i);
    end

    foreach (farm_h[i]) begin // handle and object properties are printed
      $display("farm_h[%0d]=%p",i,farm_h[i]);
    end

    foreach (farm_h[i]) begin // each handle is pointing to object Cow1 and the remainig objects are garbage collected
      farm_h[i] = farm_h[0];
    end

	end

endmodule