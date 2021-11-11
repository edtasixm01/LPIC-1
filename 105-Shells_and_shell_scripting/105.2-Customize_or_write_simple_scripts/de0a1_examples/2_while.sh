#! /bin/bash

VAR=1

until [ $VAR -gt 5 ] 
do
  let VAR=VAR+1
  echo $VAR
done
