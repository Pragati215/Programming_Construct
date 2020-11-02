#!/bin/bash -x


in=inches
ft=feet
mt=meter

n=$((RANDOM%200+100));
p=$((n/12));
q=$((p*12));
r=$((p/3));
s=$((r*3));

echo "enter a choice"
read i 
case $i in 

1)echo "$n $in = $p $ft"
2)echo "$p $ft = $q $in"
3)echo "$p $ft = $r $mt"
4)echo "$r $mt = $s $ft"
*)echo "defaultcase"

esac



