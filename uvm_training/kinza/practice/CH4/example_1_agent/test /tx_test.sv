class tx_test extends uvm_test;

	//Factory registration
	`uvm_component_utils(tx_test)
	
	//constructor
	function new(string name,uvm_component parent);
		super.new(name,parent);
	endfunction
	tx_env env;

	//building the components inside the hierarchy of environment class
	virtual function void build_phase(uvm_phase phase);
		env = tx_env::type_id::create("env",this);
	endfunction

	//Connect phase not required as we have no other component except of an agent class, exist inside the environment hierarchy
	virtual task run_phase (uvm_phase phase);
		tx_sequence seq;
	 	seq = tx_sequence::type_id::create("seq");
		phase.raise_objection(this,"Start tx_sequence"); 
		seq.start(env.agt.sqr);
		//test raises an object and calls the start method in the sequence passing in a handle to the seqr. The sequence start method call body().
		phase.drop_objection(this,"End tx_sequence"); //when the seq body() task return, it drops the objection telling UVM that the stimulus is done and 																										run_phase() is over.
	endtask

	//Print topology report
	function void end_of_elaboration_phase(uvm_phase phase);
		  uvm_top.print_topology();
	endfunction : end_of_elaboration_phase

endclass
