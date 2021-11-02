#! /bin/bash
# show from [1-10]

MAX=10
num=1
while [ $num -le $MAX ]
do
  echo "$num"
  ((num++))
done
exit 0

