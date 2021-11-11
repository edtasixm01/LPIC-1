#! /bin/bash

echo " Tria quina de les següents opcions vols executar: "
echo " 0 - Estat de les meves màquines"
echo " 1 - Iniciar Debian 10 "
echo " 2 - Apagar  Debian 10 "
echo " 3 - Iniciar MP08 - XAMPP "
echo " 4 - Apagar  MP08 - XAMPP "
echo "--------------------------"

echo -n "Selecciona la teva opció (0-4): "
read OPCIO

case $OPCIO in
		0)
			echo "Opcion 0"
			;;
		1)
			echo "Opcion 1"
			;;
		2)
			echo "Opcion 2"
			;;
		3)
			echo "Opcion 3"
			;;
		4)
			echo "Opcion 4"
			;;
		*)
			echo "Opcion no valida"
			;;
esac
