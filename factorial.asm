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
	string1	.asciiz	"Enter a number:\n"
	# TODO: Write the rest of the initializations here

#Text Area (i.e. instructions/code directive)
.text
main:

	# TODO: Write your code here

exit:
	# TODO: Write code to properly exit a SPIM simulation
