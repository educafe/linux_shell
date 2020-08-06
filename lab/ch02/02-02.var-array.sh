#!/bin/bash
#array variable, shell special variable


#Array variable
myarr=(1 3 5 7 9)			#indexed array
echo ${!myarr[@]}
echo ${myarr[*]}
echo ${myarr[1]} 
unset myarr[1]

declare -A url				#associative array : key-value, similar to python dictionary
url[kosta]="edu.kosta.co.kr"
url[kea]="educ.or.kr"
url[ncia]="edu.ncia.kr"
#echo ${!url[*]}
printf "%-20s %-20s %-20s\n" ${!url[*]}
printf "%-20s %-20s %-20s\n" ${url[*]}
printf "%s\n"
printf "%-20s %s\n" "kosta's url is" "${url[kosta]}."
printf "%-20s %s\n" "kea's url is" "${url[kea]}."
printf "%-20s %s\n" "google's url is" "${url[google]}."
	
	
	
	