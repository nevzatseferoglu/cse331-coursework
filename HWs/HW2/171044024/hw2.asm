
################################
# Gebze Technical University   #
# CSE331 - HW2				   #
# Nevzat Seferoglu - 171044024 #
################################


# string which is writen into memory directly.
	.data
msg_size_input	 : 	.asciiz "\nArray size: "
msg_num_input	 : 	.asciiz "\nNumber: "
msg_seq_input	 : 	.asciiz "\nSequnce:\n"
msg_possible	 : 	.asciiz "\nPossible!\n"
msg_not_possible : 	.asciiz "\nNot possible!\n"

	
# main-scope
# --------------------------------------------------------------------------
	.text
	.globl main 
main:

	# $s0 - input array size
	# $s1 - num that will be queried
	# $s2 - array_adress  
	# $a0 - string displaying
	
	# take array size as an input, store in $s0
	la $a0, msg_size_input
	jal print_string
	jal get_int
	move $s0, $v0
	
	# take a integer number as an input, store in $s1
	la $a0, msg_num_input
	jal print_string
	jal get_int
	move $s1, $v0
	
	# allocate an array with given size
	move $a0, $s0
	jal allocate_int_array
	move $s2, $v0
	
	# take  array elements one by one, fill allocated array
	la $a0, msg_seq_input
	jal print_string
	move $a0, $s2
	move $a1, $s0
	jal fill_array
	
	# a0, num
	# a1, allocated array adress
	# a0, array-size
	move $a0, $s1
	move $a1, $s2
	move $a2, $s0
	jal CheckSumPossibility
	move $a3, $v0
	
	#  print the result to Run I/O
	beq $a3, $zero, not_possible
	la $a0, msg_possible
	j print_result
	
	not_possible:
		la $a0, msg_not_possible
		
	print_result:
		jal print_string
				
				
	# exit from the program safely		
	jal exit
	syscall
# --------------------------------------------------------------------------


# a0 - num
# a1 - array_adress
# a2 - array_size
CheckSumPossibility:

	# $t0 - returnVal
	# $t1 - current
	# $t2 - rest
	
	li $t0, 0
	li $t1, 0
	li $t2, 0
	
	bne $a0, $zero, else_if
	li $t0, 1
	j return
	
	else_if:
		beq $a2, $zero, do
		slt $t3, $a0, $zero
		bne $t3, $zero, do
		j else
		
	do:
		li $t0, 0
		j return
	
	else:
		addi $sp, $sp, -16
		sw $ra, 0($sp) # save ra
		sw $a0, 4($sp) # save num
		sw $a2, 8($sp) # size
		
		move $t3, $a1
		addi $t4, $a2, -1
		sll $t4, $t4, 2
		add $t3, $t3, $t4
		lw $t3, 0($t3)
		sub $a0, $a0, $t3
		addi $a2, $a2, -1
		jal CheckSumPossibility
		lw $a2, 8($sp) # restore array-size
		lw $a0, 4($sp) # restore num
		move $t1, $v0
		move $t0, $t1
		sw $t1, 12($sp)
		
		beq $t0, $zero, print
		move $t4, $a0
		move $t5, $a2
		addi $t5, $t5, -1
		sll $t5, $t5, 2
		move $t3, $a1
		add $a0, $t3, $t5
		lw $a0, 0($a0)
		
		jal print_integer
		addi $a0, $zero, ' '
		jal print_char
		
		move $a0, $t4
		j to_return
		
		#empty body
		print:
			
		addi $a2, $a2, -1
		jal CheckSumPossibility
		lw $t1, 12($sp)
		move $t2, $v0
		or $t0, $t1, $t2
		
to_return:
		lw $ra, 0($sp)
		addi $sp, $sp, 16
		j return
			
return:
		move $v0, $t0
		jr $ra
	



# $a0 array_adress
# $a1 array_size
# fill the array by taken as input with loop
fill_array:
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	
	sll $t0, $a1, 2 	#t0 arr[0]
	add $t0, $a0, $t0	#t1 arr[size]
loop:	slt $t1, $a0, $t0
		beq $t1, $zero, exit_loop
		jal get_int
		sw $v0, 0($a0)
		addi $a0, $a0, 4
		j loop
		
exit_loop:	lw $ra, 0($sp)
			addi $sp, $sp, 4
			jr $ra
	

#take number as integer, allocate memory, return allocated adress
allocate_int_array:
	sll $a0, $a0, 2
	li $v0, 9
	syscall
	jr $ra

#take single input
get_int:
	li $v0, 5	# code - read integer
	syscall
	jr $ra

#print char to 'Run I/O'
print_char:		# $a0 - initial adress of given string
	li $v0, 11	# code - print string
	syscall		# syscall
	jr $ra		# return back to caller

#print string to 'Run I/O'
print_string:		# $a0 - initial adress of given string
	li $v0, 4	# code - print string
	syscall		# syscall
	jr $ra		# return back to caller
	
#print integer to 'Run I/O'
print_integer:		# $a0 - initial value 
	li $v0, 1	# code - print integer
	syscall		# syscall
	jr $ra		# return back to caller

#terminate the execution, call syscall after execution
exit:
	li $v0, 10	# code - exit
	jr $ra		# return back to caller

	
