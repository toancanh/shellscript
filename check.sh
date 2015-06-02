#!/bin/bash
clear
declare arraya
declare arrayb
echo "---------------Kiem tra file thieu theo format [number]a.x, [number]b.x. Vd: 1a.mp4, 2b.txt------------"
echo "Nhap duong dan chua file: (vd: /home/tan/Lab):  "
read pathin
echo "Nhap so thu tu bat dau: "
read t
echo "Nhap so thu tu ket thuc: "
read s
echo "Nhap kieu file (Vd: .mp4, .txt): " 
read ext
echo "Ket qua xuat ra 2 file: a.txt va b.txt"
echo "Nhap duong dan de ket qua (Vd: /home/user): "
read pathout
#----------------------------------------------------------------
if [[ ( -f $pathout/a.txt ) || ( -f $pathout/b.txt ) ]]; then
	>$pathout/a.txt
	>$pathout/b.txt
fi
#----------------------------------------------------------------
t=1
while [ $t -le $s ]
do
	arraya[$t]=${t}a$ext
	arrayb[$t]=$[t]b$ext
	let t+=1		
done

for i in ${arraya[*]}
do
	if [ ! -f $pathin/$i ]; then
		echo $i >> $pathout/a.txt
	fi
done

for j in ${arrayb[*]}
do
	if [ ! -f $pathin/$j ]; then
		echo $j >> $pathout/b.txt
	fi
done
