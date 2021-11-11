#! /bin/bash

echo "Valor 1"
read VAR1
echo "Valor 2"
read VAR2

#if [ $VAR1 -eq 3 -a $VAR2 -eq 4 ] ; then 
#   echo "TODO OK"
#fi

if [ $VAR1 -eq 3 ] || [ $VAR2 -eq 4 ] ; then 
   echo "TODO OK"
fi


