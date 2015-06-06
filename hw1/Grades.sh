#!/bin/bash
#Dylan Nguyen

file=${1}

#check if file supplied
if [ $# -ne 1 ]
then
				echo "Usage: Grades.sh filename"
				exit 1
fi


while read id fn ln g1 g2 g3
				#read in the fields
do
				average=$(echo "($g1+$g2+$g3)/3"|bc)
				#calculate average
				echo $average "["$id"]" $ln"," $fn 
				#print in format
done < ${file} | sort -t" " --key=3d --key=4d --key=2g
#pipe in the result to sort and sort it
