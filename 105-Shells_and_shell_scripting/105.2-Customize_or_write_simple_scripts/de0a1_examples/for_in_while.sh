#! /bin/bash

VAR=0
while [ $VAR -lt 10 ]
do
	echo "La variable vale "$VAR
	let VAR=VAR+1
	echo $VAR
done
