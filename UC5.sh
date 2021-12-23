echo "Welcome to Employee Wage Computation"
PRESENT=1
PAY_PER_HOUR=20
PART_TIME=2
WORKING_DAYS=20
TOTAL_SALARY=0

for (( day=1; day<=$WORKING_DAYS; day++ ))
do
  isPresent=$((RANDOM%3));

case $isPresent in
$PRESENT)
   echo "Employee is Present";
   WorkingHour=8;
   ;;
$PART_TIME)
   echo "Employee is working part time";
   WorkingHour=4;
   ;;
*)
  echo "Employee is Absent";
  WorkingHour=0;
  ;;
esac

Salary=$(($WorkingHour*$PAY_PER_HOUR));
TotalSalary=$(($TotalSalary+$Salary));
done

echo "Employee has earned $TotalSalary in a month";

