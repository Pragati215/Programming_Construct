#! /bin/bash 

# WAP for Gambler game to play till start stake amt is 100rs and ends to 200rs or 0rs bet 1rs for every loss or win.

stake=100
bet=1
noOfPlay=0
win=0
loss=0
# Start Play
while [[ $stake -lt 200 && $stake -gt 0 ]]
do
		(( noOfPlay++ ))
		stake=$(( $stake - 1 ))
		play=$(( RANDOM%2 ))

		# Condition to check win or loss
		if [[ $play -eq 1 ]]
		then
		     (( win++ ))
          	     stake=$(( $stake + 2 ))
		else
		     (( loss++ ))
		fi
done
echo "No of play=$noOfPlay "
echo "No of wins=$win "
echo "No if loss=$loss"
echo Your Stake amt is $stake
