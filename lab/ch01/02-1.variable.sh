#!/bin/bash
#user variable, constant variable, array variable, shell special variable

# Assign a value to User variable
my_name="Hong Gil Dong"
my_age=17
my_id=1111

echo "Name:$my_name, Age:$my_age, Id:$my_id"

#Constant variable
readonly height=170.5

#Array variable
array=(1 3 5 7 9)			#indexed array
echo ${!array[@]}
echo ${array[*]}


declare -A url				#associative array : key-value, similar to python dictionary
url[kosta]="edu2.kosta.co.kr"
url[naver]="www.naver.com"
url[google]="www.google.com"
#echo ${!url[*]}
printf "%-20s %-20s %-20s\n" ${!url[*]}
printf "%-20s %-20s %-20s\n" ${url[*]}
printf "%s\n"
printf "%-20s %s\n" "kosta's url is" "${url[kosta]}."
printf "%-20s %s\n" "naver's url is" "${url[naver]}."
printf "%-20s %s\n" "google's url is" "${url[google]}."
echo
echo "kosta's url is" $'\t' ${url[kosta]}
echo "naver's' url is" $'\t' ${url[naver]}
echo "google's url is" $'\t' ${url[google]}