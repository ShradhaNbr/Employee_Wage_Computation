#!/bin/bash -x
echo "Welcome to Wage Computation Program"
random_check=$((RANDOM%2))
if [ $random_check -eq 0 ]
then
echo "Employee is absent "
else
echo "Employee is Present "
fi
