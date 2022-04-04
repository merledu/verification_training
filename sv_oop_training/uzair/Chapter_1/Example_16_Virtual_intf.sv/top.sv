module top();

intf intf_tb();

test t0(.cmp_o(intf_tb));

dut d0(.a_i(intf_tb.opA_i),
       .b_i(intf_tb.opB_i)      
);
  
endmodule