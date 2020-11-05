module half_adder 
  (
   input a,
   input b,
   output sum,
   output carry
   );
  
 
  assign sum   = a ^ b;  //  xor
  assign carry = a & b;  //  and
 
endmodule 