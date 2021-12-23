echo "Welcome to Employee Wage Computation"
PRESENT=1
PAY_PER_HOUR=20
PART_TIME=2

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

Wage=$(($WorkingHour*$PAY_PER_HOUR));
echo "Employee Wage: $Wage";
