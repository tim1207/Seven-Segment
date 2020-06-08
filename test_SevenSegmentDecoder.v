module test_SevenSegmentDecoder;
    wire[6:0] seg_out;
    reg [3:0] seg_in;
    SevenSegmentDecoder test1( seg_out ,seg_in);
    initial begin
            seg_in =0;
      #10   seg_in =1;
      #10   seg_in =2;
      #10   seg_in =3;
      #10   seg_in =4;
      #10   seg_in =5;
      #10   seg_in =6;
      #10   seg_in =7;
      #10   seg_in =8;
      #10   seg_in =9;
      #10   seg_in =10;
      #10   seg_in =11; 
      #10   seg_in =12;
      #10   seg_in =13;
      #10   seg_in =14;
      #10   seg_in =15; 
      #10   $stop;
 
    end
    initial begin
    $monitor($time," seg_out=%b",seg_out);
      
    end
endmodule  