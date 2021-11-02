#! /bin/bash
# example use of  $?
#
userdel -r pere
if [ $? -eq 0 ]; then
  echo "user pere deleted"	
else
  echo "error deleting user pere"
fi  
