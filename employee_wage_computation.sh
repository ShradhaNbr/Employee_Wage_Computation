#!/bin/bash -x
function employee()
{
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
total_wrk_day=20
read -p "Enter what wage you want to calculate 1. full time 2. part time" choice
	case $choice in
	1)wage=$(($wage_per_hour * $full_day))
	echo $wage
	read -p "enter total working hours" total_wrk_hrs
	if [ $total_wrk_day -le 20 -a $total_wrk_hrs -le 100 ]
	then
	total_wage=$(($wage * $total_wrk_day))
	echo "Wage for a month for full time $total_wage"
	echo "Daily wage is $wage"
	day_wage=$wage
	echo "Day wage is $day_wage" 
	else
	exit
	fi
		;;
	2)part_time_employee_wage=$(($wage_per_hour * $part_time_hour))
	echo $part_time_employee_wage
	read -p "enter total working hours" total_wrk_hrs
	if [ $total_wrk_day -le 20 -a $total_wrk_hrs -le 100 ]
        then
	total_wage=$(($part_time_employee_wage * $total_wrk_day))
	echo "Wage for a month for part time $total_wage"
	echo "Daily wage is $part_time_employee_wage"
	day_wage=$wage
	echo "Day wage is $day_wage"
	else
	exit
	fi
		;;
esac
}
employee $total_wrk_hrs
