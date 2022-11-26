#!/bin/bash -x
isPartTime=1
isFullTime=2
empRatePerHr=20
numberOfworkingDay=20
MaxRateInMonth=100
totalWorkingDays=0
totalEmpHr=0
Totalsalary=0
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
function getEmpWages()
{
   echo $(($totalEmpHr*$empRatePerHr))
}

while [[ $totalEmpHr<$MaxRateInMonth && $totalWorkingDays<$numberOfworkingDay ]]
do
      ((totalWorkingdays++))
      randomcheck=$((RANDOM%3))
      getWorkingHour $randomcheck
      totalEmpHr=$(($totalEmpHr+$empHrs))
      dailyWages[$totalWorkingDay]=$(($empHrs*$empRatePerHr))
done
      totalsalary="$(getEmpWages $totalEmpHr)"
      echo ${dailyWages[@]}
