.data
input: .asciiz "Enter the number of Natural Number to sum:  "
.text
li $v0, 4 		
la $a0, input
syscall
  li $v0, 5
  syscall
  move $t0, $v0
  
  # This is the result
  li $t2,0
  
  # For cycle
  li $t1, 1 # i = 1
  j loop
  
loop:
  bgt $t1,$t0,end # end loop if i greater than n
  add $t2,$t2,$t1 # Add i to result
  addi $t1,$t1,1 # i ++
  j loop
  
  
end:
  # Print result
  li $v0,1
  move $a0,$t2
  syscall

  # done
  li $v0, 10
  syscall
