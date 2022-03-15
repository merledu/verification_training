/*-----------------------------------------------------------------
File name     : run.f
Developer     : Kinza Qamar Zaman
Created       : 14-Mar-22
Description   : Basic UVM hello_world example 
Notes         : From the Mentor "SystemVerilog UVM" training
-------------------------------------------------------------------

-----------------------------------------------------------------*/
-64

-uvmhome $UVMHOME

+UVM_TESTNAME=hello_world
// compile files

hello_world.sv // compile hello_world package
top.sv            // compile top level module
