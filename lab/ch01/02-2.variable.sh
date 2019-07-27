#!/bin/bash
#shell built-in variable

# Assign a value to System variable
echo "Current path = " $PATH
echo "Current Working Directory = " $PWD
PATH=$PWD:$PATH

echo "\$\$ outside of subshell = $$"                              
echo "\$BASH_SUBSHELL  outside of subshell = $BASH_SUBSHELL"     
echo "\$BASHPID outside of subshell = $BASHPID"
ps -f            

echo

( 	echo "\$\$ inside of subshell = $$"                            
  	echo "\$BASH_SUBSHELL inside of subshell = $BASH_SUBSHELL"     
  	echo "\$BASHPID inside of subshell = $BASHPID" 
	ps -f
	( 	echo "\$\$ inside of subshell = $$"                            
  		echo "\$BASH_SUBSHELL inside of subshell = $BASH_SUBSHELL"     
  		echo "\$BASHPID inside of subshell = $BASHPID" 
		ps -f 
	)
)        
  # Note that $$ returns PID of parent process.
