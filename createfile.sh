#!/bin/bash
i=1
while [ $i -le 20 ]
do
	touch ${i}a.txt
	touch ${i}b.txt
	let i+=1
done
