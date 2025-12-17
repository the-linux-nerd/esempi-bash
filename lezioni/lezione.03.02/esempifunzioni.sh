#!/bin/bash

function somma {
    if [ -n "$2" ]; then
        local risultato=$(( $1 + $2 ))
        echo "La somma di $1 e $2 è: $risultato"
    else
        echo "Errore: devi fornire due numeri."
    fi
}

risultato=42

somma 5 3

echo "ha sconfinato $risultato"

somma 7

