#!/bin/bash
CC=gcc
CFLAGS="-g -c -O2 -Wall"

echo "Project Build..."

echo ""
echo "Compile~~"
for cfile in *.c
do 
	$CC $CFLAGS $cfile
done

echo ""
echo "Linking~~"
$CC -o mytest *.o

echo ""
echo "Build Completed!!"

exit 0

