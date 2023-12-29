module encoder_42_tb;
  reg a,b,c,d;
  wire y0,y1;
  encoder_42 en(a,b,c,d,y0,y1);
  initial begin
    $monitor("a=%0d,b=%0d,c=%0d,d=%0d,y0=%0d,y1=%0d",a,b,c,d,y0,y1);
      a=1;b=0;c=0;d=0;
  #2  a=0;b=1;c=0;d=0;
  #2  a=0;b=0;c=1;d=0;
  #2  a=0;b=0;c=0;d=1;
  end
endmodule
