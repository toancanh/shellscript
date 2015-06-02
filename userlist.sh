#!/bin/bash
LINE=1
userid=$(cat /etc/passwd | cut -d: -f 3)
for i in $userid
do
	if [ $i -ge 500 ]; then
		echo $(cat /etc/passwd | tail -n +$LINE | head -n 1 | cut -d: -f1)
	fi
#	(( LINE = $LINE + 1 ))
	let LINE+=1
done
