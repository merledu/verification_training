/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Kinza Qamar Zaman - Verification                                                    //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    18-MARCH-2022                                                                       //
// Design Name:    Animal Class                                                                        //
// Module Name:    top.sv                                                                              //
// Project Name:   Configurable constructor with "this" handle                                         //
// Language:       SystemVerilog - OOP                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//             This class example aims to demonstrate the use of this handle. The handle "this" points //
//             to the properties of the class when both the arguments and class propeties have         //
//			   		 same name.                                                                              //
// Revision Date:                                                                                      //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

class animal;

  int age;
  string name;

//Class constructor
	function new(int age,string name);
		this.age = age; // this is an implicit handle to point the properties of the current object's class
		this.name = name;
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

//Method makedog()
	task makedog();
		animal a_h;
		a_h = new(.age(3),.name("Fluffy"));
	endtask
	
endclass