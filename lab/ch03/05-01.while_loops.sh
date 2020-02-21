#!/bin/bash

INDEX=1
while [ $INDEX -lt 6 ]
do
  echo "Creating project-${INDEX}"
  mkdir ~/lab/chapter-"${INDEX}"
  ((INDEX++))
done

while [ "$correct" != "y" ]
do
  read -p "Enter your name: " name
  read -p "Is ${name} correct name (y/n)? " correct
done
