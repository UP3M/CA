.data
newline: .asciiz "\n"
	f: .float 0
	input: .asciiz "Enter temperature in Fahrenheit: "
	output: .asciiz "Temperature in Celsius: "
	t1: .float 32
	t2: .float 5
	t3: .float 9
.text
#print input
li $v0, 4 		
la $a0, input
syscall
#read_float 
li $v0, 6                  	
syscall
l.s $f31, f
add.s $f1, $f0, $f31
#print_line
li $v0, 4 		
la $a0, newline
syscall
#load float
l.s $f2, t1
l.s $f3, t2
l.s $f4, t3
#do computation
sub.s $f1, $f1, $f2
mul.s $f1, $f1, $f3
div.s $f1, $f1, $f4
#print output
li $v0, 4 		
la $a0, output
syscall
#print_float 
li $v0, 2
l.s $f31, f
add.s $f12, $f1, $f31
syscall
#print_line
li $v0, 4 		
la $a0, newline

#done
li $v0 ,10
syscall
