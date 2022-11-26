#!/bin/bash -x


isPartTime=1
isFullTime=2
empRatePerHr=20
numberOfWorkingDay=20
MaxRateInMonth=70
totalWorkingDays=0
totalEmpHr=0
totalsalary=0

function getWorkingHour()
{
    case $1 in
                       $isPartTime)
                            empHrs=4
                       ;;
                       $isFullTime)
                            empHrs=8
                       ;;
                       *)
                            empHrs=0
                       ;;
    esac
}
while (($totalEmpHr<$MaxRateInMonth && $totalWorkingDays<$numberOfWorkingDay))
do
     ((totalWorkingDays++))
     getWorkingHour $((RANDOM%3))
     totalEmpHr=$(($totalEmpHr+$empHrs))
done
totalsalary=$(($totalEmpHr*$empRatePerHr))
echo "Total salary is"$totalsalary
