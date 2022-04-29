module top;

	`include "uvm_macros.svh" //Includes uvm macros utility
	import uvm_pkg::*; 		 //import uvm base classes
	`include "tx_item.sv"
	`include "tx_sequence.sv"
	`include "tx_driver.sv"
	`include "tx_monitor.sv"
	`include "agent_config.sv"
	`include "tx_agent.sv"
	`include "tx_env.sv"
	`include "tx_test.sv"

	initial begin
		run_test(); // run_test Start execution of uvm phases
	end 
endmodule 

