#!/bin/bash
#Declare the function which will retrieve data from Here Document
function courseInfo (){
	read title
	read location
	read instructor
	read duration
} <&5
# Declare here document part to send data into the function
courseInfo 5<<ADDTEXT
	Linux Shell Scripting
	Korea Electronics Association
	krdiyoon
	$(date -d 2020-07-06 +%F) ~ $(date -d 2020-07-09 +%F)
ADDTEXT
# Print the value of the function variables after calculating price value with 10% discount
echo "$title"
echo "$location"
echo "$instructor"
echo "$duration"