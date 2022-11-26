#!/bin/bash -x
isPresent=1
random_check=$((RANDOM%3))
empRatePerHr=20
empHrs=8

if (($isPresent == $random_check))
then
    salary=$(($empRatePerHr*$empHrs))
    echo "The salary is"$salary
else
    salary=0
    echo "The salary is"$salary
fi
