# factorial.asm program
# CS 64, Z.Matni
#
# Assembly (NON-RECURSIVE) version of:
#   unsigned int n, fn=1;
#   cout << "Enter a number:\n";
#   cin >> n;
#   for (int x = 2; x <= n; x++)
#       fn = fn * x;
#   cout << "Factorial of " << x << " is:\n" << fn << "\n";

#Data Area (i.e. memory setup directive)
.data
	InputString:	.asciiz	"Enter a number:\n"
	# TODO: Write the rest of the initializations here
	FactorialOf: 	.asciiz "Factorial of "
	Is: 		.asciiz " is:\n"
	Newline:	.asciiz "\n"
#Text Area (i.e. instructions/code directive)
.text
main:

	# TODO: Write your code here
	input:
	la $a0, InputString
	li $v0, 4
	syscall
	li $v0, 5
	syscall
	li $t0, 1
	move $t1, $v0
	move $t2, $v0
	loop:
	beq $t0, $v0, print
	mult $t1, $t0
	mflo $t1
	addi $t0, 1
	j loop
	print:
	la $a0, FactorialOf
	li $v0, 4
	syscall
	move $a0, $t2
	li $v0, 1
	syscall
	la $a0, Is
	li $v0, 4
	syscall 
	move $a0, $t1
	li $v0, 1
	syscall
	la $a0, Newline
	li $v0, 4
	syscall

exit:
	# TODO: Write code to properly exit a SPIM simulation
	li $v0, 10
	syscall
