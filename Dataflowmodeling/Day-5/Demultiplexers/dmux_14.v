// A demultiplexer sometimes abbreviated dmux and it is a circuit that has one input and produce more outputs.Demux formula is 1*2^n-(2powr-n).

module dmux_41(i,s,y);
  input i;
  input s0,s1;;
  output [3:0]y;
  
  assign y[3] = i & ~s0 & ~s1;
  assign y[2] = i & ~s0 & s1;
  assign y[1] = i & s0 & ~s1;
  assign y[0] = i & s0 & s1; 
  
endmodule
