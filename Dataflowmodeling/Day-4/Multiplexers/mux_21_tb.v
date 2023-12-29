module mux_21_tb;
  reg a,b;
  reg s;
  wire y;
  integer i,j;
  mux_21 m1(a,b,s,y);
  initial begin
    $monitor("a=%0d,b=%0d,s=%0d,y=%0d",a,b,s,y);
   a=1;b=0;s=0;  //directed testbench
#2 a=0;b=1;s=1;
    /* for(i=0;i<=4;i=i+1)  //using for loop
      begin
        {a,b}=i+1;
      end
      for(j=0;j<=4;j=j+1)
          begin
            {s}=j;
            #5;
          end
#10;*/
  end
endmodule
