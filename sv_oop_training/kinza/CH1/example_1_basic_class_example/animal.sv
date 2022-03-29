/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Kinza Qamar Zaman - Verification                                                    //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    18-MARCH-2022                                                                       //
// Design Name:    Animal Class                                                                        //
// Module Name:    animal.sv                                                                           //
// Project Name:   Basic SystemVerilog OOP Example                                                     //
// Language:       SystemVerilog - OOP                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//         - This example class aims to demonstrate SystemVerilog Classes and how to utilize the class.//
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

class animal;
  int age;
  string name;
//Class constructor
	function new();
		age = 0;
		name = "";
	endfunction 
//Method to display properties of the animal
	function void print();
		$display("Animal name : %s and age : %0d",name,age);
	endfunction
//Method to get the age
	task growOld (int how_long);
		repeat(how_long)
		#1 age++;
	endtask
endclass
