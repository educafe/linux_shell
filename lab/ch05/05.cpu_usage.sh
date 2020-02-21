#!/bin/bash
#Cpu usage monitoring
echo "Please wait ....."

top -b -n5 | fgrep "Cpu(s)" | awk -F',' '{ print $1 $2 $3 $4 }' 

# top -b -n5 > serverstatus
# cat serverstatus | fgrep "Cpu(s)" | awk -F',' '{ print $1 $2 $3 $4 }' 
# cat serverstatus | fgrep "KiB Mem " | awk -F',' '{ print $1 $2 $3 $4 }' 

