#!/bin/bash
# int-or-string.sh
a=2334
let "a += 1" 				# Integer.
echo "a = $a " 		# a = 2335
echo 				# Integer, still.
b=${a/23/BB}		# Substitute "BB" for "23".

# This transforms $b into a string.
echo "b = $b" 		# b = BB35
declare -i b 		# Declaring it an integer doesn't help.
echo "b(int) = $b" 		# b = BB35
let "b += $b" 		# BB35 + 1
echo "b = $b" 		# b = 1
echo 				# Bash sets the "integer value" of a string to 0.
c=BB34
echo "c = $c" 		# c = BB34