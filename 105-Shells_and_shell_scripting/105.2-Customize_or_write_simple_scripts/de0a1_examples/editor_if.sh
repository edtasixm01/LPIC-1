#! /bin/bash

verd () {
    echo -e "\e[32m$1!\e[0m"
}

vermell () {
    echo -e "\e[31m$1!\e[0m"
}

blau () {
    echo -e "\e[34m$1!\e[0m"
}

echo -n " Cual es el mejor editor del mundo?: "
read VI

if [ -z $VI ]; then 
  echo "No escribiste nada"
  exit 1
fi

if [ "$VI" = "vi" ]; then 
  verd OK
elif [ "$VI" = "VI" ]; then 
  verd OK
elif [ "$VI" = "vim" ]; then 
  blau casi
else
  vermell NO!
fi