class agent_config;

	//virtual interface 
	// virtual tb_ifc vif

	//agent configuration]
	enum {UVM_ACTIVE, UVM_PASSIVE} active;
	function new();
		active = 0;
	endfunction

endclass
