module demux_41_tb;
  reg i;
  reg s0,s1;
  wire [3:0]y;
  dmux_41 d1(.i(i),.s0(s0),.s1(s1),.y(y));
  initial begin
    $monitor("i=%b,s0=%b,s1=%b,y=%b",i,s0,s1,y);
         {i,s0,s1} = 3'b100;
    #2;  {i,s0,s1} = 3'b101;
    #2;  {i,s0,s1} = 3'b110;
    #2;  {i,s0,s1} = 3'b111;
  end
endmodule


