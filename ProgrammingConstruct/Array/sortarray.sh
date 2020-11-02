#!/bin/bash 

echo "enter maximum number"
read n

echo "enter Numbers in array:"
for (( i = 0; i < $n; i++ ))
do
read a[$i]
done

echo "Numbers in an array are:"
for (( i = 0; i < $n; i++ ))
do
echo ${a[$i]}
done

for (( i = 0; i < $n ; i++ ))
do
for (( j = $i; j < $n; j++ ))
do
if [ ${a[$i]} -gt ${a[$j]} ]; then
t=${a[$i]}
a[$i]=${a[$j]}
a[$j]=$t
fi
done
done

echo -e "\nSorted Numbers "
for (( i=0; i < $n; i++ ))
do
echo ${a[$i]}
done

if [ "${#a[@]}" -lt 2 ]
then
echo Incoming array is not large enough >&2
exit 1
fi

largest=${a[0]}
secondGreatest='unset'

for((i=1; i < ${#a[@]}; i++))
do
if [[ ${a[i]} > $largest ]]
then
secondGreatest=$largest
largest=${a[i]}
elif (( ${a[i]} != $largest )) && { [[ "$secondGreatest" = "unset" ]] || [[ ${a[i]} > $secondGreatest ]]; }
then
secondGreatest=${a[i]}
fi
done

echo "secondGreatest = $secondGreatest"


if [ "${#a[@]}" -lt 2 ]
then
echo Incoming array is not large enough >&2
exit 1
fi

smallest=${a[0]}
secondsmallest='unset'

for((i=1; i < ${#a[@]}; i++))
do
if [[ ${a[i]} < $smallest ]]
then
secondsmallest=$smallest
smallest=${a[i]}
elif (( ${a[i]} != $smallest )) && { [[ "$secondsmallest" = "unset" ]] || [[ ${a[i]} < $secondsmallest ]]; }
then
secondsmallest=${a[i]}
fi
done

echo "secondsmallest = $secondsmallest"


