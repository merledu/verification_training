/*-----------------------------------------------------------------
File name     : run.f
Developer     : Kinza Qamar Zaman
Created       : 14-Mar-22
Description   : Basic UVM hello_world example 
Notes         : From the Mentor "SystemVerilog UVM" training
-------------------------------------------------------------------

-----------------------------------------------------------------*/

module top ;
import uvm_pkg::*;
import hello_pkg::*;

initial begin
run_test(); // run_test Start execution of uvm phases
end 

endmodule 