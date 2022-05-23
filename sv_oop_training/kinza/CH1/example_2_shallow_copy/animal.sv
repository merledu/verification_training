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
// Project Name:   Shallow copy Example                   					                                   //
// Language:       SystemVerilog - OOP                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//            Example of how the copy constructor does not work well on aggregated object.             //
// Revision Date:                                                                                      //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

class animal;

	mouth m_h;
  int age;
  string name;

//Class constructor
function new(int age,string name,int teeth);
  this.age = age;
	this.name = name;
	m_h=new(teeth);
endfunction 

//Method to display properties of the animal
function void print();
	$display("Animal name : %s and age : %0d",name,age);
endfunction

endclass