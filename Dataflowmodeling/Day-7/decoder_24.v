// A decoder is a multiple-input, multiple-output logic circuit that converts coded inputs into coded outputs,
// where the input and output codes are different. It has N input lines and 2 power n output lines

module decoder_24(a,b,y0,y1,y2,y3);
  input a,b;
  output y0,y1,y2,y3;
  assign y0 = !a&!b;
  assign y1 = !a&b;
  assign y2 = a&!b;
  assign y3 = a&b;
endmodule

