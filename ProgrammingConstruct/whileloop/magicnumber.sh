#! /bin/bash 

echo "Please consider one number between 1 to 100 "
sleep 4
no=0
min=1
max=100

while [[ no -eq 0 ]]
do
		sum=$(( $min+$max ))
		mid=$(( $sum / 2 ))
		echo "Enter y if $mid is your number ?
                Enter 1 if no is less than $mid
                Enter 2 if no is greater than $mid"
		read  choice
		case $choice in
				y)echo Your number is $mid
                                  no=$mid;;
				1)max=$mid;;
				2)min=$mid;;
				*)echo Invalid choice;;
		esac
done
