// Multiplexer is a combinational circuit which has many data inputs and produce single output based on the select line.
// It also called selector or parallel to serila converter

module mux_21(a,b,s,y);
  input a,b;
  input s;
  output y;
//  assign y=s?b:a;  //conditional statement
  assign y = a&!s | b&s;
endmodule
