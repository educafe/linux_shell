#!/bin/bash
testing=$(date)
echo "The date and time are: " $testing

# copy the /usr/bin directory listing to a log file
today=$(date +%y%m%d)
ls -l /usr/bin > log.$today
# ls /usr/bin -al > log.$(date +%y%m%d)

