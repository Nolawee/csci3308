#!/bin/bash
#Dylan Nguyen
file=$1
if [ $# -ne 1 ]
then
				echo "Usage: RegexAnswers.sh filename"
				exit 1
fi
egrep '[0-9]$' ${file} | wc -l
egrep '^[^aiueoAIUEO]' ${file} | wc -l
egrep '^[a-zA-Z]{12}$' ${file} | wc -l
egrep '^[0-9]{3}-[0-9]{3}-[0-9]{4}$' ${file} | wc -l
egrep '^303-441-[0-9]{4}' ${file} | wc -l
egrep '[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}' ${file} | wc -l
egrep '[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.gov' ${file} | wc -l
