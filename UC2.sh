echo "Welcome to Employee Wage Computation"
PRESENT=1
PAY_PER_HOUR=20

isPresent=$((RANDOM%2));
if [ $isPresent -eq $PRESENT ]
then
   echo "Employee is Present";
   WorkingHour=8;
else
   echo "Employee is Absent";
   WorkingHour=0;
fi

Wage=$(($WorkingHour*$PAY_PER_HOUR));
echo "Employee Wage: $Wage";
