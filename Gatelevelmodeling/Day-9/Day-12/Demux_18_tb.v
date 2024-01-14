module tb_dmux_1_8;
  reg i;
  reg s0,s1,s2;
  wire [7:0]y;
  dmux_1_8 siva(.i(i),.s0(s0),.s1(s1),.s2(s2),.y(y));
  initial begin 
	    $monitor("s0=%b,s1=%b,s2=%b,y=%b",s0,s1,s2,y);
    		i=1;s0=0;s1=0;s2=0;
    		#20 
    		s0=0;s1=0;s2=1;
				#20
				s0=0;s1=1;s2=1;
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
