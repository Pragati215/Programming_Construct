#!/bin/bash -x

yr=0
isleap="false"
 
echo -n "Enter year : "
read yr
 
 
if [ $((yr % 4)) -ne 0 ] ; then
   : 
elif [ $((yr % 400)) -eq 0 ] ; then

   isleap="true"
elif [ $((yr % 100)) -eq 0 ] ; then
   : 
else
   
   isleap="true"
fi
if [ "$isleap" == "true" ];
then
   echo "$yy is leap year"
else
   echo "$yy is NOT leap year"
fi
