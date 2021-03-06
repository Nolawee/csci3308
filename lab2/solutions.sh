#!/bin/bash
#cranberry, jackfruit, nectarine, prickly pear
#< is from the first file given and > is from the second
#displays info around the difference

#wc -l testPasswd.txt = 15

#wc -m(or c) testPasswd.txt = 692

cut -d':' -f1 testPasswd.txt

cut -d' ' -f2,2,4 grades.txt

cut -d':' -f4 testPasswd.txt | sort -n | uniq

cut -d':' -f4 testPasswd.txt | sort -n | uniq > ~/lab2file.txt

cut -d':' -f1,6 testPasswd.txt | grep "^[mws]"

sed 's/[a-zA-Z]//g' leetSpeak.txt

sed 's/[0-9]//g' leetSpeak.txt

sed 's/[0-9]/_/g' leetSpeak.txt

sed 's/0/o/g' leetSpeak.txt | sed 's/1/i/g' | sed 's/3/e/g' | sed 's/4/a/g' | sed 's/5/s/g' | sed 's/7/t/g'

awk 'BEGIN {FS=OFS=" "; sum=0;} {sum+=$3} END {print "class average:" sum/NR}' grades.txt

egrep '[0-9]{3}-[0-9]{3}-[0-9]{4}' -c regex_practice_data.txt

egrep '303-441-[0-9]{4}' -c regex_practice_data.txt

egrep '[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}' -c regex_practice_data.txt

egrep '[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.gov' -c regex_practice_data.txt

egrep '^[A-Ma-m][A-Za-z]+\.[A-Za-z]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}' -c regex_practice_data.txt
