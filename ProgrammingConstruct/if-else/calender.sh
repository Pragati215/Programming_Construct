#!/bin/bash -x

read -p " Enter Date:-" D
read -p " Enter Month:-" M

if (( ($M <= 6 & $D <= 20) ))
then
        echo $M $D "True";

elif (( ($M >= 3 & $M < 6) & ($D<31)  ))
then
        echo $D $M "True";

else

        echo "False";
fi
