#!/bin/bash

#passing the file name at exection time so accessing by $1
file=$(pwd)/$1

n=$(awk -F' ' 'END {print NF}' $file)
cat $file | while read line
do 
	rev_line=""
	for i in $line
	do
		rev_line=$(echo "$i $rev_line")
	done
	echo $rev_line

done
