#!/bin/bash -x

read -p "Enter the value of year" year
if [ $year -eq 1992 ] || [ $year -eq 1993 ]
then
declare -A months
num=1
while [ $num -le 50 ]
do
	var=$(( RANDOM%12+1 ))
	months[$num]=$var
	if [ $var -eq 1 ]
	then
		jan[$num]=$var
	elif [ $var -eq 2 ]
	then
		feb[$num]=$var
	elif [ $var -eq 3 ]
        then
                mar[$num]=$var
	elif [ $var -eq 4 ]
        then
                april[$num]=$var
	 elif [ $var -eq 5 ]
        then
                may[$num]=$var
	 elif [ $var -eq 6 ]
        then
                june[$num]=$var
	 elif [ $var -eq 7 ]
        then
                july[$num]=$var
	 elif [ $var -eq 8 ]
        then
                aug[$num]=$var
	 elif [ $var -eq 9 ]
        then
                sep[$num]=$var
	 elif [ $var -eq 10 ]
        then
                oct[$num]=$var
	 elif [ $var -eq 11 ]
        then
                nov[$num]=$var
	else
		dec[$num]=$var
	fi
	num=$(( $num+1 ))
done

echo ${#jan[@]} "members celebrating bday in the month of jan : " [${!jan[@]}]
echo ${#feb[@]} "members celebrating bday in the month of feb : " [${!feb[@]}]
echo ${#mar[@]} "members celebrating bday in the month of mar : " [${!mar[@]}]
echo ${#april[@]} "members celebrating bday in the month of april : " [${!april[@]}]
echo ${#may[@]} "members celebrating bday in the month of may : " [${!may[@]}]
echo ${#june[@]} "members celebrating bday in the month of june : " [${!june[@]}]
echo ${#july[@]} "members celebrating bday in the month of july : " [${!july[@]}]
echo ${#aug[@]} "members celebrating bday in the month of aug : " [${!aug[@]}]
echo ${#sep[@]} "members celebrating bday in the month of sep : " [${!sep[@]}]
echo ${#oct[@]} "members celebrating bday in the month of oct : " [${!oct[@]}]
echo ${#nov[@]} "members celebrating bday in the month of nov : " [${!nov[@]}]
echo ${#dec[@]} "members celebrating bday in the month of dec : " [${!dec[@]}]

else

echo "Please enter the value between 1992 & 1993 only"
fi







