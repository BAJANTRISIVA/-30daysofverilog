module encoder_4_2_tb;
   reg [3:0]i;
   wire [1:0]y;
   integer z;  
   encoder_4_2 siva (.i(i),.y(y));
   initial begin
	 $monitor($time,"i[0]=%b,i[1]=%b,i[2]=%b,i[3]=%b,y[1]=%b,y[0]=%b",i[0],i[1],i[2],i[3],y[1],y[0]);
   for(z=0;z<1;z=z+1) begin
				   i=4'b0001;
			#10	 i=4'b0010;
			#10	 i=4'b0100;
			#10	 i=4'b1000;	
				 end
   end
endmodule
