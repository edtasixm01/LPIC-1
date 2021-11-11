#! /bin/bash

if test -e file
then
  echo "HOLa"
else
  echo "Adios"
fi


while :
do
 cmd=`date +"%H:%M:%S $F"`
 echo -n -e "\033[s"
 C=$((`tput cols` -19))
 tput cup 0 $C
 COLOR=`tput setaf 2; tput smso`

 NORMAL=`tput sgr0`

 echo -n $COLOR$cmd$NORMAL

 echo -n -e "\033[u"

 sleep 1

done