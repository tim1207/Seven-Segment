module test_topseven;
  wire[6:0] x_out, y_out, sum_out, c_out;
  reg [3:0] x,y;
  top t1(x_out, y_out, c_out, sum_out, x, y);
  initial begin
            x =0;   y=0;
      #10   x =1;   y=1;
      #10   x =2;   y=0;
      #10   x =3;   y=0;
      #10   x =4;   y=0;
      #10   x =5;   y=0;
      #10   x =6;   y=0;
      #10   x =7;   y=0;
      #10   x =8;   y=0;
      #10   x =9;   y=0;
      #10   x =10;  y=0;
      #10   x =11;  y=0;
      #10   x =12;  y=0;
      #10   x =13;  y=0;
      #10   x =14;  y=0;
      #10   x =15;  y=15;
      #10   $stop;
 
    end
    initial begin
    $monitor($time," sum_out=%b  c_out=%b",sum_out,c_out);
  end
endmodule