/////////////////////////////////////////////////////////////////////////////////////////////////////////
// Company:        MICRO-ELECTRONICS RESEARCH LABORATORY                                               //
//                                                                                                     //
// Engineers:      Kinza Qamar Zaman - Verification                                                    //
//                                                                                                     //
// Additional contributions by:                                                                        //
//                                                                                                     //
// Create Date:    17-MARCH-2022                                                                       //
// Design Name:    extended transaction item                                                           //
// Module Name:    tx_dst_fixed.sv                                                                     //
// Project Name:   tx_dst_fixed is extended from tx_item generate transaction for fixed dst            //
// Language:       SystemVerilog - UVM                                                                 //
//                                                                                                     //
// Description:                                                                                        //
//          tx_dst_fixed generates transction for fixed destination address.                           //
// Revision Date:                                                                                      //
//                                                                                                     //
/////////////////////////////////////////////////////////////////////////////////////////////////////////

class tx_dst_fixed extends tx_item;
    `uvm_object_utils(tx_dst_fixed)

    function new (string name = "tx_dst_fixed");
        super.new(name);
    endfunction

    rand bit [31:0] fixed_dst = 32'h2;
    constraint c_dst_fixed {soft dst == fixed_dst;}

    //Virtual Copy method 
    //Copies the object pointing to source handle into the object pointing to destination handle ---> (dst.copy(src))
    //There are 3 steps to do this

    //1: Create the do_copy method
    virtual function void do_copy(uvm_object rhs);

    //2nd: Declare new handle and cast the argument to this handle

    //As tx_item properties are not visible from just the uvm_object handle, declare new handle that points to tx_item object
        tx_dst_fixed tx_rhs;
    // cast the argument rhs to tx_rhs
        if (!$cast(tx_rhs,rhs)) //At run time SV checks the object type of both the handles through $cast
            `uvm_fatal(get_type_name(),"Illegal rhs arguments:"); 

        super.do_copy(rhs); //There may be properties in uvm_seq_item class that need to be copied so call super.docopy() passing in the rhs handle

    //3rd(a): Copy object properties
        fixed_dst = tx_rhs.fixed_dst;

    //3(b) Above method is shallow. Deep copy any contained objects. 
    //In this example, we do not have any aggregated class so we skip the 3b step
    endfunction
    //Virtual compare method
    //Compare method returns match ---> if(actual.compare(expect))
    //There are 3 steps to do this
    virtual function bit do_compare(uvm_object rhs, uvm_comparer comparer);

    //1st: cast uvm_object handle into tx_item handle so you can access tx_item properties
    //As tx_item properties are not visible from just the uvm_object handle, declare new handle that points to tx_item object
        tx_dst_fixed tx_rhs;
    // cast the argument rhs to tx_rhs
        if (!$cast(tx_rhs,rhs)) //At run time SV checks the object type of both the handles through $cast
            `uvm_fatal(get_type_name(),"Illegal rhs arguments:"); 

    //Since compare tells us about match or mismatch, we'll include return statement here
    //2nd: Call super.docompare()
    //3rd(a): Compare all properties with the 4-state operator ===

        return( super.do_compare(rhs, comparer) &&	
              (fixed_dst === tx_rhs.fixed_dst))  ;

    //3rd(b)deep compare other contained objects
    //In this example, we do not have any aggregated class so we skip the 3b step 
    endfunction
    virtual function string convert2string();
        string s = super.convert2string(); //Get the string with base object properties
        $sformat(s, ":%s\ntx_dst_fixed values are : \n",s); 
        $sformat(s, ":%s fixed_dst=%0x\n" ,s,fixed_dst); 
    endfunction
endclass
