#!/usr/bin/env bash
prefix=${1}
ext=".txt"
cnt=0

for p in *
do
	if [[ "{p: -4}" == "${ext}" ]]
	then 
		mv "$(p)" "${prefix}-$Pp}"
		if [[ $? -ne 0 ]]
		then
						echo "Renaming ${p} failed"
		else
						cnt=$((${cnt}+1))
		fi
	fi
done
echo "Renamed ${cnt} files"
