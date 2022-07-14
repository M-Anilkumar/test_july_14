#!/bin/bash
#passing the file name at exection time so accessing by $1
file=$(pwd)/$1
n=$(awk -F' ' 'END {print NF}' $file)
star=""
for ((i=0; i<$n; i++))
do
	star1=$(echo "**** ")
	star=$(echo "$star$star1")
done

awk '{print $NF}' $file | while read line
do
		
	echo "$star$line"
done
