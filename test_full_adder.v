module test_full_adder;
  wire cout,sum;
  reg a,b,cin;
  full_adder f1(cout, sum, a, b, cin);
  initial begin
          a=0; b=0; cin=0;
      #10 a=0; b=0; cin=1;
      #10 a=0; b=1; cin=0;
      #10 a=0; b=1; cin=1;
      #10 a=1; b=0; cin=0;
      #10 a=1; b=0; cin=1;
      #10 a=1; b=1; cin=0;
      #10 a=1; b=1; cin=1;
      #10 $stop;
  end
  initial begin
    $monitor($time," cout=%b sum=%b <= a=%b b=%b cin=%b",cout,sum,a,b,cin);
  end
      
endmodule