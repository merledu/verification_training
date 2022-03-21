/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Kinza Qamar Zaman - Verification                                                    //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    14-MARCH-2022                                                                       //
// Design Name:    animal class                                                                        //
// Module Name:    animal.sv                                                                           //
// Project Name:                                                                                       //
// Language:       SystemVerilog - OOP                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     - Basic animal class to demonstrate SystemVerilog OOP basics.                                   //
//       .....                                                                                         //
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
