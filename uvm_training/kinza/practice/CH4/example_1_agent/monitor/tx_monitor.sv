/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Kinza Qamar Zaman - Verification                                                    //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    20-MARCH-2022                                                                       //
// Design Name:    Analysis port example                                                               //
// Module Name:    tx_monitor.sv                                                                       //
// Project Name:   Agent-Monitor TLM connection              		                                       //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//          tx_monitor broadcast the input and output transactions from DUT through the analysis port. //
// Revision Date:                                                                                      //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

class tx_monitor extends uvm_monitor;
		//Factory Registration
		`uvm_component_utils(tx_monitor)

		//constructor
		function new(string name,uvm_component parent);
			super.new(name,parent);
		endfunction
		
		//virtual tb_ifc vif; //like driver , monitor too use virtual interface to call interface methods
		//agent_config agt_cfg;
		uvm_analysis_port #(tx_item) dut_in_tx_port;   //for sending input transactions
		uvm_analysis_port #(tx_item) dut_out_tx_port; //for sending output transactions
		
		//Monitor build phase
		function void build_phase(uvm_phase phase); 
			//Unlike driver single TLM port, monitor's analysis port has not declared in the base class.
			//These TLM classes are never extended, so no need to call factory to create an object.
			//Constructor has 2 arguments: i) Instance name ii) handle to the parent
			dut_in_tx_port  = new("dut_in_tx_port",this);
			dut_out_tx_port = new("dut_out_tx_port",this);
			/*if(!uvm_config_db #(agent_config) :: get(this," ","agt_cfg",agt_cfg);
				`uvm_fatal("MONITOR","No  agent configuration found");
			vif=agt_cfg.vif*/
		endfunction

		//Monitor run_phase 
		virtual task run_phase(uvm_phase phase);
			//input and output transaction are process separately, so spawn off separate thread to the receiver
			/*fork
				get_inputs();
				get_outputs();
			join*/
		endtask

		virtual task get_inputs();
			tx_item tx_in;
			forever begin
				tx_in = tx_item :: type_id :: create("tx_in");
				/*vif.get_an_input(tx_in); //call interface method get_an_input by passing handle to the argument. 
				  The method waits for the DUT input transaction to fills in the properties of input transaction. */
				`uvm_info("TX_IN",tx_in.convert2string(),UVM_DEBUG);
				dut_in_tx_port.write(tx_in); //broadcast the transaction to the port
			end
		endtask

		virtual task get_outputs();
			tx_item tx_out;
			forever begin
				tx_out = tx_item :: type_id :: create("tx_out");
				//vif.get_an_output(tx_out); 
				/*call interface method get_an_output by passing handle to the argument. 
				  The method waits for the DUT output transaction to fills in the properties of output transaction. */
				`uvm_info("TX_OUT",tx_out.convert2string(),UVM_DEBUG);
				dut_out_tx_port.write(tx_out); //broadcast the transaction to the port
			end
		endtask

endclass
