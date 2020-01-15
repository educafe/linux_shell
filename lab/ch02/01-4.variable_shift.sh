#!/bin/bash
set 2 3 4 5 6
echo "All declaration of \$1 \$2 \$3 \$4 \$5 = $1 $2 $3 $4 $5"
shift
echo 'Shift By one = '$*' and $1 = '$1''
shift 2
echo "Shift by 2 = $* and \$1 = $1"