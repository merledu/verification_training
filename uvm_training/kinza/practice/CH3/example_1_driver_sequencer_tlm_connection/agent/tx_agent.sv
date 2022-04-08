/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Kinza Qamar Zaman - Verification                                                    //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    18-MARCH-2022                                                                       //
// Design Name:    TLM connection                                                                      //
// Module Name:    tx_agent.sv                                                                         //
// Project Name:   Driver-sequencer TLM connection                                                     //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//          tx_agent builds and connects driver and sequencer.                                         //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

class tx_agent extends uvm_agent;

	//Factory registration
	`uvm_component_utils(tx_agent)
	//constructor

	function new(string name,uvm_component parent);
		super.new(name,parent);
	endfunction

	tx_driver drv;
	//tx_monitor mon;
	uvm_sequencer #(tx_item) sqr; //Never extended

	//building the components inside the hierarchy of agent class
	virtual function void build_phase(uvm_phase phase);
		drv = tx_driver::type_id::create("drv",this);
		sqr = new("sqr",this);
	//	mon = tx_monitor::type_id::create("mon",this);
	endfunction

	//connectng the components inside the hierarchy of agent class
	virtual function void connect_phase(uvm_phase phase);	
		drv.seq_item_port.connect(sqr.seq_item_export);
	endfunction
	
endclass
