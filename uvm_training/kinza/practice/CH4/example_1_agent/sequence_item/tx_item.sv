class tx_item extends uvm_sequence_item;
	//Factory Registration
	`uvm_object_utils(tx_item) 	// Sequencer or transactions are object classes so use object utility macros to register it into the factory
	//Constructor

	function new (string name="tx_item");
		super.new(name);
	endfunction

	rand bit [31:0] a;
	rand bit [31:0] b;
	
endclass

