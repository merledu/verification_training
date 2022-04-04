/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Kinza Qamar Zaman - Verification                                                    //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    17-MARCH-2022                                                                       //
// Design Name:    Random transaction class                                                            //
// Module Name:    tx_item.sv                                                                          //
// Project Name:   tx_item generate random transaction for src and dst.                                //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//         The tx_item class extends from uvm_sequence_item is used to generate 31-bit random src      //
//         and dst items.                                                                              //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////
class tx_item extends uvm_sequence_item;

	//Factory Registration
	`uvm_object_utils(tx_item) 
	/*Sequencer or transactions are object classes so use object utility macros to register it into the 
	  factory */

	//Constructor
	function new (string name="tx_item");
		super.new(name);
	endfunction

	rand bit [31:0] src,dst;
	logic [31:0] result;

	//Virtual Copy method 
	/*Copies the object pointing to source handle into the object pointing to destination 
	  handle ---> (dst.copy(src)) */
	//There are 3 steps to do this:
	//1: Create the do_copy method
	virtual function void do_copy(uvm_object rhs);

	//2nd: Declare new handle and cast the argument to this handle

	/*As tx_item properties are not visible from just the uvm_object handle, declare new handle 
	  that points to tx_item object */
		tx_item tx_rhs;
	//cast the argument rhs to tx_rhs
		if (!$cast(tx_rhs,rhs))   //At run time SV checks the object type of both the handles through $cast
			`uvm_fatal(get_type_name(),"Illegal rhs arguments:"); 
		super.do_copy(rhs);		   /*There may be properties in uvm_seq_item class that need to be copied so call 
								   						 super.docopy() passing in the rhs handle */

	//3rd(a): Copy object properties
		this.src = tx_rhs.src;
		this.dst = tx_rhs.dst;
		this.result = tx_rhs.result;
	//3(b) Above method is shallow. Deep copy any contained objects. 
	//In this example, we do not have any aggregated class so we skip the 3b step 
	endfunction

	//Virtual compare method
	//Compare method returns match ---> if(actual.compare(expect))
	//There are 3 steps to do this

	virtual function bit do_compare(uvm_object rhs, uvm_comparer comparer);
	//1st: cast uvm_object handle into tx_item handle so you can access tx_item properties
	/*As tx_item properties are not visible from just the uvm_object handle, declare new handle that points to 
		tx_item object */
		tx_item tx_rhs;
	// cast the argument rhs to tx_rhs
		if (!$cast(tx_rhs,rhs)) //At run time SV checks the object type of both the handles through $cast
			`uvm_fatal(get_type_name(),"Illegal rhs arguments:"); 

	//Since compare tells us about match or mismatch, we'll include return statement here
	//2nd: Call super.docompare()
	//3rd(a): Compare all properties with the 4-state operator ===

		return( super.do_compare(rhs, comparer) &&	
					  (src === tx_rhs.src)            &&
					  (dst === tx_rhs.dst)            &&
					  (result === tx_rhs.result) )     ;

	//3rd(b)deep compare other contained objects
	//In this example, we do not have any aggregated class so we skip the 3b step 
	endfunction

	//Virtual Convert2string 
	//Convert2string method is used to print transaction objects

	virtual function string convert2string();
		string s = super.convert2string(); //Get the string with base object properties
		$sformat(s, ":%s\n tx_item values are : ",s); 
		$sformat(s, ":%s\n src,dst = 0x%0x , 0x%0x" ,s,src,dst); 
		$sformat(s, ":%s\n result = 0x%0x",s,result); 
	endfunction
endclass

