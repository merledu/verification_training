`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Micro Electronics Research Lab
// Engineer: Rehan Ejaz
// Create Date: 18.03.2022
// Design Name: OOP Animal Class Systemverilog
// Module Name: top
// Description: OOP based CLASS to understand basic Classes of system verilog and their properties
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module top();
	
  class Mouth;
    
    int teeth;

    function new(int teeth);
      this.teeth = teeth;
    endfunction

  endclass // Mouth

  class Animal;
    
    Mouth m_h;
    
    function  new(int teeth);
      m_h = new(teeth);
    endfunction
	
  endclass //Animal

	Animal a_h;

	initial begin
    a_h = new(4); 
    $display("Number of teeth = %0d",a_h.m_h.teeth);
	end

endmodule