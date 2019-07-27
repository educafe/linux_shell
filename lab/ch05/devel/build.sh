#!/bin/bash
CC=gcc
CFLAGS="-g -c -O2 -Wall"

echo "Project Build..."

echo ""
echo "Compile~~"
for cfile in src/*.c
do 
	$CC $CFLAGS $cfile
done
if [ -e obj -a -d obj ]
then
	mv *.o obj
else
	mkdir obj
	mv *.o obj
fi

echo ""
echo "Linking~~"
$CC -o mytest obj/*.o

echo ""
echo "Build Completed!!"

exit 0
