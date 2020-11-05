module full_adder(
input a,
input b, 
input carry_in,
output sum, 
output carry_out
);
assign sum =  ((~carry_in) & a &(~b)) | ((~carry_in) &(~a)&b ) | (carry_in &(~a) &(~b)) | (carry_in & a & b) ;
assign carry_out = ((~carry_in) & a &b) | ((carry_in) &(~a)&b ) | (carry_in &(a) &(~b)) | (carry_in & a & b)  ;
endmodule
 