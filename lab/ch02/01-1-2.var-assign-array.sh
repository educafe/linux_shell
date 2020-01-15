#!/bin/bash
#array variable, shell special variable


#Array variable
array=(1 3 5 7 9)			#indexed array
echo ${!array[@]}
echo ${array[*]}


declare -A url				#associative array : key-value, similar to python dictionary
url[kosta]="edu2.kosta.co.kr"
url[kea]="educ.or.kr"
url[google]="www.google.com"
#echo ${!url[*]}
printf "%-20s %-20s %-20s\n" ${!url[*]}
printf "%-20s %-20s %-20s\n" ${url[*]}
printf "%s\n"
printf "%-20s %s\n" "kosta's url is" "${url[kosta]}."
printf "%-20s %s\n" "kea's url is" "${url[kea]}."
printf "%-20s %s\n" "google's url is" "${url[google]}."
	
	
	
	