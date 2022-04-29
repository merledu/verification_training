
class tx_agent extends uvm_agent;
	//Factory registration
	`uvm_component_utils(tx_agent)

	//constructor
	function new(string name,uvm_component parent);
		super.new(name,parent);
	endfunction

	tx_driver drv;
	tx_monitor mon;
	uvm_sequencer #(tx_item) sqr; //Never extended
	agent_config agt_cfg; 		 //agent configuration class handle
	uvm_analysis_port #(tx_item) dut_in_tx_port;  //for sending input transactions
	uvm_analysis_port #(tx_item) dut_out_tx_port; //for sending output transactions

	//building the components inside the hierarchy of agent class
	virtual function void build_phase(uvm_phase phase);
	//get configuration information. Will be covered in later examples
		agt_cfg = new();	
		mon = tx_monitor::type_id::create("mon",this);
		dut_in_tx_port  = new("dut_in_tx_port",this);
		dut_out_tx_port = new("dut_out_tx_port",this);
		if (agt_cfg.active == UVM_ACTIVE) begin
			drv = tx_driver::type_id::create("drv",this);
			sqr = new("sqr",this);
		end
	endfunction

	//connectng the components inside the hierarchy of agent class
	virtual function void connect_phase(uvm_phase phase);	
		mon.dut_in_tx_port.connect(this.dut_in_tx_port);
		mon.dut_out_tx_port.connect(this.dut_out_tx_port);
		if (agt_cfg.active == UVM_ACTIVE) 
			drv.seq_item_port.connect(sqr.seq_item_export); //Can't connect in build phase
	endfunction
	
endclass
