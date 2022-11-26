#!/bin/bash -x
ispresent=1
randomCheck=$((RANDOM%2))
if(($ispresent==randomCheck))
then
   echo "Employee is present"
else

    echo "Employee is not present"
fi
