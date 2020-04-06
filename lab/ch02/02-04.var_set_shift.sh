#!/bin/bash
set 2 3 4 5 6
echo "All variables of \$1 \$2 \$3 \$4 \$5 = $1 $2 $3 $4 $5"
shift
echo 'Shift By one = '$*' and $1 = '$1''
shift 2
echo "Shift by 2 = $* and \$1 = $1"

textline="name phone address birthdate salary"
set $textline
echo "$*"
echo '$1 = '$1' and $4 = '$4''