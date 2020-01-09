#!/bin/bash

prompt=">"
echo -n "$prompt "
#	read num1 op1 num2 op2 num3 op3 num4
read equation

#	echo
#	echo $num1
#	echo $op1
#	echo $num2
#	echo $op2
#	echo $num3
#	echo $op3
#	echo $num4

#	echo $(($num1 $op1 $num2 $op2 $num3 $op3 $num4))
echo $(($equation))
