#!/bin/bash 

echo "Enter the n"
read n  

number=$n
reverse=0
while [ $n -gt 0 ]
do
a=`expr $n % 10 `
n=`expr $n / 10 `
reverse=`expr $reverse \* 10 + $a`
done
echo $reverse

for i in ${number[@]}
do
if [ $number -eq $reverse ]
then
echo "array of repeated no. " ${number[@]}
else
echo "digit not repeated"
fi
((i++));
done


