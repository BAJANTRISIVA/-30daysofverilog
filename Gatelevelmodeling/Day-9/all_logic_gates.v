module all_logic_gates_dut (a,b,y);
      input a,b;
  	  output y;
      not n1 (y,a,b);
      and a1 (y,a,b);
      or o1 (y,a,b);
      nand n2 (y,a,b);
      nor n3 (y,a,b);
      xor x1 (y,a,b);
      xnor x2(y,a,b);
endmodule
