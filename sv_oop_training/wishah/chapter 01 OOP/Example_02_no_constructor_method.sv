/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Wishah Naseer - Verification	Engineer                                               //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    20-MARCH-2022                                                                       //
// Design Name:    SV OOP Practice                                                                     //
// Module Name:    Example 02.sv                                                                       //
// Project Name:   SV OOP Training                                                                     //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//     - This code helps to understand the flow when there is no constructor method in a class 	       //
//                                                                                                     //
//                                                                                                     //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

module top();  
	class Animal;  //class declaration
    //property
    int age;
    string name;

    //method 
    function void print();
    $display("Animal : '%s' age = %a0d", name, age);
    endfunction
    
  endclass : Animal

Animal a_h; //handle to Animal Object

initial begin 
	a_h = new();  //since there is no constructor method, so both properties are Null by default
	a_h.print();	//will print "Animal: '' age = 0 "
  
end
endmodule
