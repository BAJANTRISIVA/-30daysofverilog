module half_sub_tb;
  reg a,b;
  wire dif,bor;
  reg [1:0]i;
  half_sub h1(a,b,dif,bor);
  initial begin
      $monitor("a=%0d,b=%0d,dif=%0d,bor=%0d",a,b,dif,bor);
      /*a=0;b=0;
  #4  a=0;b=1;
  #4  a=1;b=0;
  #4  a=1;b=1;*/
    for(i=0;i<=8;i=i+1)
        begin
            {a,b}=i+1;
            #2;
        end
  end
  initial #50 $stop;
endmodule
