#!/bin/bash 

RANDOM=$((RANDOM%6+1))
PIPS=7
MAXTHROWS=50
throw=0

ones=0
twos=0
threes=0
fours=0
fives=0
sixes=0

declare -i Dice

print_result (){
echo "ones =   $ones"
echo "twos =   $twos"
echo "threes = $threes"
echo "fours =  $fours"
echo "fives =  $fives"
echo "sixes =  $sixes"
}

update_count()
{
case "$1" in
  0) let "ones += 1";;
  1) let "twos += 1";;
  2) let "threes += 1";;
  3) let "fours += 1";;
  4) let "fives += 1";;
  5) let "sixes += 1";;
esac
}

while [ "$throw" -lt "$MAXTHROWS" ]
do
  let "die1 = RANDOM % $PIPS"
  update_count $die1
  let "throw += 1"
   Dice[((throw))]=$die1  
done

print_result

echo " Dice - " ${Dice[@]}
maxtime=( $( printf "%s \n" "$die1" | sort -n  ))
echo "maxtime comes- "$die1
mintime=( $( printf "%s \n" "$die1" | sort -nr  ))
echo "mintime comes- "$die1
 
exit 0


