class BadTr extends transaction;
  bit badCsm;  
  BadTr b_h;
  
  virtual function void calcCsm();
    super.calcCsm();       
    if(badCsm) csm = ~csm; 
  endfunction

endclass