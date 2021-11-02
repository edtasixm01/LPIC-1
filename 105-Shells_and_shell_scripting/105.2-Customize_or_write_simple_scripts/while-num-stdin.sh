#! /bin/bash
# numerar stdin  línia a línia
num=1
while read -r line
do
  echo "$num: $line"
  ((num++))
done
exit 0

