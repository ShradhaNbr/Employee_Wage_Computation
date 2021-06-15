#!/bin/bash -x
echo "Welcome to Wage Computation Program" 
random_check=$((RANDOM%2)) 
if [ $random_check -eq 0 ] 
then 
echo "Employee is absent " 
else 
echo "Employee is Present " 
fi 
wage_per_hour=20 
full_day=8
part_time_hour=8 
wage=$(($wage_per_hour * $full_day)) 
part_time_employee_wage=$(($wage_per_hour * $part_time_hour))
