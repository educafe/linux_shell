#!/bin/bash
# Find ASCII Code
read -p "Input Character : " -N 1 char
echo
echo $(printf " HEX=%x  DEC=%d  OCT=%o" "'$char'" "'$char'" "'$char'")
