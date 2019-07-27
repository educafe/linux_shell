#!/bin/bash
#Cpu usage monitoring

top -b -n5 | fgrep "Cpu(s)" | awk -F',' '{ print $1 $2 $3 $4 }' 