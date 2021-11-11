#! /bin/bash

FIN_DESCANSO=`date --date='+15 minutes' -u +%s`
INICIO_DESCANSO=`date -u +%s`

let TIEMPO_DESCANSO=FIN_DESCANSO-INICIO_DESCANSO

for i in `seq 1 $TIEMPO_DESCANSO`
do
	HORA_ACTUAL=`date -u +%s`
	let TIEMPO_ACTUAL=FIN_DESCANSO-HORA_ACTUAL
	MINUTOS=`date -d @$TIEMPO_ACTUAL +%M`
	SEGUNDOS=`date -d @$TIEMPO_ACTUAL +%S`
	echo "Quedan" $MINUTOS:$SEGUNDOS "para el examen ..."
	sleep 1
done