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
read -p "Enter what wage you want to calculate 1. full time 2. part time" choice
	case $choice in
	1)wage=$(($wage_per_hour * $full_day))
	echo $wage
	wage_for_month_full=$(($wage * 20))
	echo "Wage for a month for full time $wage_for_month_full"
		;;
	2)part_time_employee_wage=$(($wage_per_hour * $part_time_hour))
	echo $part_time_employee_wage
	wage_for_month_part=$(($part_time_employee_wage * 20))
	echo "Wage for a month for part time $wage_for_month_part"
		;;
esac

