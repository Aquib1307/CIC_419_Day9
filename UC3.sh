echo "Welcome to Employee Wage Computation"
PRESENT=1
PAY_PER_HOUR=20
PART_TIME=2

isPresent=$((RANDOM%3));
if [ $isPresent -eq $PRESENT ]
then
   echo "Employee is Present";
   WorkingHour=8;
elif [ $isPresent -eq $PART_TIME ]
then
   echo "Employee is working part time"
   WorkingHour=4;
else
   echo "Employee is Absent";
   WorkingHour=0;
fi

wage=$(($WorkingHour*$PAY_PER_HOUR));
echo "Employee Wage: $wage";
