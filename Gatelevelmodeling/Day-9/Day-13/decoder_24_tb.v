module tb_decoder_2_4;
    reg a,b;
   	wire j,k,l,m;
	  integer i;
    decoder_2_4 dut(.a(a),.b(b),.j(j),.k(k),.l(l),.m(m));
    initial begin
		$monitor("a=%b,b=%b,j=%b,k=%b,l=%b,m=%b",a,b,j,k,l,m);
		for(i=0;i<2;i=i+1) begin
		{a,b}=i;
		#20;
		end
  /*a=0;b=0;
#20 a=0;b=1;
#20 a=1;b=0;
#20 a=1;b=1;*/

end
endmodule
