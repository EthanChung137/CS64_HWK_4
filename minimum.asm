# minimum.asm program
# CS 64, Z.Matni
#
# Get 3 integer inputs from the user (std.in)
# Reveal the minimum value
# See assignment description for details

#Data Area (i.e. memory setup directive)
.data
	# TODO: Complete these incomplete declarations / initializations

	NumberEntry: .asciiz "Enter the next number:\n"
    	Newline: .asciiz "\n"
	Min: .asciiz "Minimum: "

#Text Area (i.e. instructions/code directive)
.text

main:

	# TODO: Write your code here
    # You can have other labels expressed here, if you need to
	#Gathering first input
	li $v0, 4
	la $a0, NumberEntry
	syscall
	li $v0, 5
	syscall
	move $t0, $v0
	#Counting the number of inputs
	li $s0, 2
	#Gathering second input to compare to the first
	getInput2:
	#If already got 2 more inputs, go to print
        beq $s0, $zero, printMin
	li $v0, 4
        la $a0, NumberEntry
        syscall
        li $v0, 5
        syscall
	#Decrement input counter
	addi $s0, $s0, -1
	blt $v0, $t0, replace
	j getInput2
	replace:
	move $t0, $v0
	j getInput2
	printMin:
	li $v0, 4
	la $a0, Min
	syscall
	move $a0, $t0
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, Newline
	syscall
exit:
	# TODO: Write code to properly exit a SPIM simulation
	li $v0, 10
	syscall
