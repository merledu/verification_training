/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Kinza Qamar Zaman - Verification                                                    //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    20-MARCH-2022                                                                       //
// Design Name:    Analysis port example                                                               //
// Project Name:   Monitor and Agent analysis port example   		                                       //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//          agent_config object has configuration settings to build and configure the components.      //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

class agent_config;

	//virtual interface 
	// virtual tb_ifc vif

	//agent configuration
	enum {UVM_ACTIVE, UVM_PASSIVE} active;

	function new();
		active = 0;
	endfunction

endclass
