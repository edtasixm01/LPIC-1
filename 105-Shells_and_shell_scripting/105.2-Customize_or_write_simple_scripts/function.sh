#! /bin/bash
# function example

function suma(){
  a=$1
  b=$2
  suma=$((a+b))
  echo $suma
  return 0
}

function multiplica(){
  echo $(($1*$2))
  return 0  
}

# main
suma 5 3
multiplica 4 5

