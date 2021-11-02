#! /bin/bash
# iterate args

num=1
for arg in $*
do
 echo "$num: $arg"
 ((num++))
done	
