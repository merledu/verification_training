/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Kinza Qamar Zaman - Verification                                                    //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    15-MARCH-2022                                                                       //
// Design Name:    Animal Class                                                                        //
// Module Name:    animal.sv                                                                           //
// Project Name:   Shallow copy Example                   					                                   //
// Language:       SystemVerilog - OOP                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//             This example demonstrate the utilization of copy constructor.									 				 //
// Revision Date:                                                                                      //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

class animal;
  int age;
  string name;

//Class constructor
function new(int age,string name);
  this.age = age;
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

task makedog();
	animal a_h;
	a_h = new(.age(3),.name("Fluffy"));
endtask

endclass