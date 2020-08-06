#!/bin/bash
# Shell Script first Example
echo "---------------------------------"
echo "About this Machine : " 
echo "---------------------------------"
echo "Login Name : $LOGNAME"
echo "Host Name : $(uname -n)"
echo "Kernel name & Version : $(uname -s) & $(uname -r) "
echo "---------------------------------"
echo "About this Linux distribution : " 
echo "---------------------------------"
lsb_release -a

