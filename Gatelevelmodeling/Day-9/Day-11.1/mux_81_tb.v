module tb_mux_8_1;
  reg [7:0]i;
	reg s0,s1,s2;
	wire y;
	
  mux_8_1 siva (.i(i),.s0(s0),.s1(s1),.s2(s2),.y(y));
  initial begin
    $monitor("s0=%b,s1=%b,s2=%b,y=%b",s0,s1,s2,y);
    i[0]=3'b000; i[1]=3'b001; i[2]=3'b010; i[3]=3'b011; i[4]=3'b100; i[5]=3'b101; i[6]=3'b110; i[7]=3'b111;
    s0=0;s1=0;s2=0;
    #20
    s0=0;s1=0;s2=1;
    #20
    s0=0;s1=1;s2=0;
    #20
    s0=0;s1=1;s2=1;
    #20
    s0=1;s1=0;s2=0;
    #20
    s0=1;s1=0;s2=1;
    #20
    s0=1;s1=1;s2=0;
    #20
    s0=1;s1=1;s2=1;
  end
endmodule
