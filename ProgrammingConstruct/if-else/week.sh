#!/bin/bash -x

read -p "Enter a number between 0 and 6 inclusive > " day
if [ "$day" = "1" ]; then
    echo "Monday"
elif [ "$day" = "2" ]; then
    echo "Tuesday"
elif [ "$day" = "3" ]; then
    echo "wednesday"
elif [ "$day" = "4" ]; then
    echo "Thursday"
elif [ "$day" = "5" ]; then
    echo "Friday"
elif [ "$day" = "6" ]; then
    echo "Saturday"
elif [ "$day" = "0" ]; then
    echo "Sunday"
else
    echo "You did not enter a number between 0 and 6."
fi
