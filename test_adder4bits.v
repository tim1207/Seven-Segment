module test_adder4bits;
  wire cout;
  wire[3:0] sum;
  reg [3:0]a,b;
  reg cin;
  adder4bits f4bit(cout, sum, a, b, cin);
  initial begin
        a=0;b=0;cin=0;
    #10 a=1;b=0;cin=1;
    #10 a=3;b=0;cin=1;
    #10 a=5;b=0;cin=1;  
    #10 a=7;b=0;cin=1;
    #10 a=11;b=0;cin=1;
    #10 a=13;b=0;cin=1;
    #10 a=15;b=0;cin=1;
    
    #10 a=1;b=1;cin=0;
    #10 a=3;b=3;cin=0;
    #10 a=5;b=5;cin=0;  
    #10 a=7;b=7;cin=0;
    #10 a=11;b=11;cin=0;
    #10 a=13;b=13;cin=0;
    #10 a=15;b=15;cin=0;
    #10  $stop;
 
  end
  initial begin
    $monitor($time," cout=%b sum=%b <= a=%b b=%b cin=%b",cout,sum,a,b,cin);
  end
      
endmodule