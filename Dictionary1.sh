#!/bin/bash -x

#a.Roll a Die
num=$((RANDOM%6+1))

#b.Repeat the Die Roll
read -p "How many times you want to repeat die roll:" n

for ((i=0; i<$n; i++))
do
	num[i]=$((RANDOM%6+1))
done
echo ${num[@]}

#c.Store the result in dictionary
echo ${!num[@]}

#d.one number reached 10 times
x1=1
x2=1
x3=1
x4=1
x5=1
x6=1

while [[ $x1 -lt 10 && $x2 -lt 10 && $x3 -lt 10 && $x4 -lt 10 && $x5 -lt 10 && $x6 -lt 10 ]]
do
	num=$((RANDOM%6+1))
	if [ $num -eq 1 ]
	then
		((x1++))
	elif [ $num -eq 2 ]
	then
		((x2++))
	elif [ $num -eq 3 ]
	then
		((x3++))
	elif [ $num -eq 4 ]
	then
		((x4++))
	elif [ $num -eq 5 ]
	then
		((x5++))
	elif [ $num -eq 6 ]
	then
		((x6++))
	fi
done
echo $x1 $x2 $x3 $x4 $x5 $x6

#e.maximum number and minimum number

count=0
dice[((count++))]=$x1
dice[((count++))]=$x2
dice[((count++))]=$x3
dice[((count++))]=$x4
dice[((count++))]=$x5
dice[((count++))]=$x6

max=${dice[0]}
min=${dice[0]}

for i in ${dice[@]}
do
	if [ $i -gt $max ]
	then
		max=$i
	fi
	if [ $i -lt $min ]
	then
		min=$i
	fi
done

echo $max
echo $min

