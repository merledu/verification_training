class transaction;
	bit [31:0] src, dst, csm, data[8];
	
	virtual function void calcCsm();
		csm = src ^ dst ^data.xor();
	endfunction

endclass