class BadTr extends Transaction;
  bit badCsm; // Corrupt the CSM 
  // override existing Methods
 
  virtual function void calcCsm();
    super.calcCsm();       // Compute checksum
    if(badCsm) csm = ~csm; // Corrupt if bad
  endfunction
  
  virtual function void print();
    $write("BadTr: badCsm=%b ", badCsm);
    super.print();
  endfunction

	virtual function void copy(Transaction rhs_h);
    BadTr b_h;
    if(!$cast(b_h, rhs_h)) 
    $fatal("cast error");
    super.copy(rhs_h);
    badCsm = b_h.badCsm;
  endfunction

  virtual function Transaction clone();
    clone = BadTr::new(); // Typed constructor to first declare handle then create object of class and then assign the handle to clone
    clone.copy(this);
  endfunction

endclass