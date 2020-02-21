#!/bin/bash
#shell built-in variable

# Assign a value to System variable
echo "Current path = " $PATH
echo "Current Working Directory = " $PWD
echo "BashID = " $BASHPID
PATH=$PWD:$PATH
echo ${BASH_SOURCE}
echo ${LINENO}
echo ${FUNCNAME[0]}
  
echo "[$0] vs. [${BASH_SOURCE[0]}]"