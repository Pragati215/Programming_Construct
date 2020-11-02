#!/bin/bash -x

read -p "Enter a number between 0 and 9 inclusive > " no
if [ "$no" = "1" ]; then
    echo "You entered one."
elif [ "$no" = "2" ]; then
    echo "You entered two."
elif [ "$no" = "3" ]; then
    echo "You entered three."
elif [ "$no" = "4" ]; then
    echo "You entered four."
elif [ "$no" = "5" ]; then
    echo "You entered five."
elif [ "$no" = "6" ]; then
    echo "You entered six."
elif [ "$no" = "7" ]; then
    echo "You entered seven."
elif [ "$no" = "8" ]; then
    echo "You entered eight."
elif [ "$no" = "9" ]; then
    echo "You entered nine."
elif [ "$no" = "0" ]; then
    echo "You entered zero."
else
    echo "You did not enter a number between 0 and 9."
fi
