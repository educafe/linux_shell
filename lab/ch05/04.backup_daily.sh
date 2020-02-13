#!/bin/bash
# Daily File Backup example

echo "== Daily File Backup =="

CONF_FILE=backuplist
DEST_DIR=./backup
FILE=$(date +%y%m%d).tar.gz
DEST_FILE=$DEST_DIR/$FILE

if [ ! -f $CONF_FILE ]; then
	echo "$CONF_FILE does not exist!!"
	exit 1
fi

# To check to see if backup directory exists, if not exist make it
if [ -f $DEST_DIR ]; then
	echo "$DEST_DIR regular file exist..."
	exit 2
else
	if [ -e $DEST_DIR ] && [ -d $DEST_DIR ]; then
		ls -ld $DEST_DIR
	else
		mkdir $DEST_DIR
		ls -ld $DEST_DIR
	fi
fi

#To list up file names for backup  
file_no=0							#start on line-1 of config file
while read filename <&3
do
	echo $filename
	if [[ "$filename" =~ ^\#* ]] ; then
#	if [[ ${filename:0:1} = \# ]] ; then
		echo "$filename starts with #"
		continue;
	elif [ -z "$filename" ]; then
		continue;
	fi

	if [ -f "$filename" ] || [ -d "$filename" ]; then
		filelist+="$filename "
		file_no=$[$file_no + 1]
	else
		echo "$filename, does not exist!! but continue to build backup list..."
	fi
done 3<$CONF_FILE
echo ""; echo "backup file list : "

for file in $filelist
do
	echo $file
done

# To tar files and compress
sudo tar -czf $DEST_FILE $filelist 2> err.log
echo ""; echo "Archving Completed!!"
echo "Resulting archive backup file : $DEST_FILE"
ls -l $DEST_FILE
echo "TOTAL_FILES = $file_no"
exit 0

# 00 04  1  *  * 	educafe	/home/educafe/lab/ch05/04.backup_daily
