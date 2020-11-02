#!/bin/bash -x

read -p "enter a b c : " a b c

s1=$(($a+($b*$c)));

echo " s1 - " $s1

s2=$((`expr $a%$b+$c`));

echo " s2 - " $s2

s3=$((`expr $c+$a/$b`));

echo " s3 - " $s3

s4=$((`expr $a*$b+$c`));

echo " s4 - " $s4

if [ $s1 -gt $s2 ] && [ $s1 -gt $s3 ] && [ $s1 -gt $s4 ]
then
    echo $s1
elif [ $s2 -gt $s1 ] && [ $s2 -gt $s3 ] && [ $s2 -gt $s4 ]
then
    echo $s2
elif [ $s3 -gt $s1 ] && [ $s3 -gt $s2 ] && [ $s3 -gt $s4 ]
then
    echo $s3
else
    echo $s4
fi

if [ $s1 -lt $s2 ] && [ $s1 -lt $s3 ] && [ $s1 -lt $s4 ]
then
    echo $s1
elif [ $s2 -lt $s1 ] && [ $s2 -lt $s3 ] && [ $s2 -lt $s4 ]
then
    echo $s2
elif [ $s3 -lt $s1 ] && [ $s3 -lt $s2 ] && [ $s3 -lt $s4 ]
then
    echo $s3
else
    echo $s4
fi
