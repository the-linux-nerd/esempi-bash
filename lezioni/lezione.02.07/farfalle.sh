#!/bin/bash

#
# Esempio di invocazione
#
#   bash butterflies.sh 8
#

clear

butterflies=0$1

while [ -z "$butterflies" -o "$butterflies" -le 0 -o "$butterflies" -gt 9 ]; do
    read -p "Quante farfalle partecipano (1-9)? " butterflies
done

echo "Correranno $butterflies farfalle, attendi..."
sleep 3



clear

# colonne di inizio e fine
start=0
end=60

butterflies=$(( butterflies - 1 ))
# azzera le posizioni
for b in $( seq 0 $butterflies ); do
    pos[$b]=$start
done

loop="yes"

clear


until [ -z "$loop" ]; do

    printf '\033[H'   # riporta il cursore all'inizio della schermata
    # header (sarebbe meglio usare una funzione)
    printf "          ⛳"
    i=$start
    while [ $i -lt $end ]; do

	if [ $(( i % 2 )) -ne 0 ]; then
	    printf " "
	else
	    printf '→'
	fi

	i=$(( i + 1 ))
    done
    printf "⛳\n"


    for b in $( seq 0 $butterflies ); do
	current_pos=${pos[$b]}
	step=$( shuf -i 0-9 -n 1 )
	current_pos=$(( current_pos + step ))
	pos[$b]=$current_pos
	printf '\r # %d (+%d) |' $b $step
	for i in $( seq 0 $current_pos ); do
	    printf ' '
	done

	printf '🦋'

	# abbiamo un vincitore?
	if [ $current_pos -ge $end ]; then
	    loop=""
	    printf '\t 🍺'
	fi

	printf '\n'
    done

    sleep 0.5
done
