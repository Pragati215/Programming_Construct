#!/bin/bash -x

read -p "Enter a number 0 and 1 > " no
if [ "$no" = "1" ]; then
     echo "Head"
elif [ "$no" = "0" ]; then
    echo "Tail"
else
    echo "You did not enter a number 0 or 1."
fi
