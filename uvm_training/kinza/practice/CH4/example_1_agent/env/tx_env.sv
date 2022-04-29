class tx_env extends uvm_env;

	//Factory registration
	`uvm_component_utils(tx_env)

	//constructor
	function new(string name,uvm_component parent);
		super.new(name,parent);
	endfunction 

	tx_agent agt;
	//building the components inside the hierarchy of environment class
	virtual function void build_phase(uvm_phase phase);
		agt = tx_agent::type_id::create("agt",this);
	endfunction

	//Connect phase not required as we have no other component except of an agent class, exist inside the environment hierarchy

endclass
