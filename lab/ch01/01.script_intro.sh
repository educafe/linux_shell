#!/bin/bash

# echo The time and date are:
date

# echo "Let's see who's logged into the system:"
who
echo
#echo "hello world"
#printf 'hello world'

echo 'hello world\n'
printf 'hello world\n'
echo

var=Hello

echo "$var World"			# echo '$var World' will show different output
printf "$var World\n"
printf "%s World\n" $var
echo

where=Seoul
year=10
printf "I have lived in $where for $year years\n"
printf 'I have lived in %s for %d years\n' $where $year

printf '%-20d\t %10s\n' $year $where

echo "Basic mathematics"
printf "%-7d %-7s %-7.2f =\t%-7.2f\n" 23 plus 5.5 28.5
printf "%-7.2f %-7s %-7d =\t%-7.2f\n" 50.50 minus 20 30.50
printf "%-7d %-7s %-7d =\t%-7d\n" 10 mul 5 50
printf "%-7d %-7s %-7d =\t%-7.2f\n" 27 div 4 6.75

#echo "Basic mathematics"
#printf "%-7d %-7s %-7.2f =\t%-7.2f\n" 23 + 5.5 28.5
#printf "%-7.2f %-7s %-7d =\t%-7.2f\n" 50.50 - 20 30.50
#printf "%-7d %-7s %-7d =\t%-7d\n" 10 \* 5 50
#printf "%-7d %-7s %-7d =\t%-7.2f\n" 27 / 4 6.75




