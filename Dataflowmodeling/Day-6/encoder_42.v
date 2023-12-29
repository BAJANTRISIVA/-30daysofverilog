// An Encoder is a combinational circuit that performs the reverse operation of Decoder. It has maximum of 2n input lines and 'n' output lines. 

module encoder_42(a,b,c,d,y0,y1);
  input a,b,c,d;
  output y0,y1;
  assign y0 = c | d;
  assign y1 = b | d;
endmodule
