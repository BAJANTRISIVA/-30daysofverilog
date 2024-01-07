module full_add_dut(a,b,c,s,carry);
  input a,b,c;
  output s,carry;
  wire w1,w2,w3;
xor x1 (w1,a,b);
xor x2 (s,c,w1);
and a1 (w2,a,b);
and a2 (w3,w1,c);
or o1 (carry,w2,w3);
endmodule
