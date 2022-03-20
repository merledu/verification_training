/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Wishah Naseer - Verification	Engineer                                               //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    20-MARCH-2022                                                                       //
// Design Name:    SV OOP Practice                                                                     //
// Module Name:    Example 03.sv                                                                       //
// Project Name:   SV OOP Training                                                                     //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     - This code helps to understand us about configurable constructor                               //
//       .....                                                                                         //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

module top();  
	class Animal;  //class declaration
    //property 
    int age;
    string name;

    //constructor method
    function new(string name_arg, int age_arg); //configurable constructor
      age = age_arg;
      name = name_arg;
    endfunction

    //another method
    function void print();
    $display("Animal : '%s' age = %a0d", name, age);
    endfunction
    
  endclass : Animal

Animal a_h; //handle to Animal Object

initial begin 
	a_h = new("Kong", 5);
	a_h.print();	//will print "Animal: 'Kong' age = 5 "
end
endmodule
