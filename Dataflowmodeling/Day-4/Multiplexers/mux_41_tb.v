module mux_41_tb;
    reg [3:0]i;
    reg [1:0]s;
    wire y;
    mux_41 m1(.i(i),.s(s),.y(y));
    initial begin
        $monitor("i=%b,s=%b,y=%0d",i,s,y);
        {i,s}=6'b1000_00;
    #2  {i,s}=6'b0100_01;
    #6  {i,s}=6'b0010_10;
    #8  {i,s}=6'b0001_11;
    end
endmodule
