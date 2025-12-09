#!/bin/bash

NUMERO=$(shuf -i 1-5 -n 1)
INDOVINATO=0

echo "Indovina il numero tra 1 e 5:"    

while [ $INDOVINATO -eq 0 ]; do
    read TENTATIVO

    if [ "$TENTATIVO" -eq "$NUMERO" ]; then
        echo "Complimenti! Hai indovinato."
        INDOVINATO=1
    else
        echo "Sbagliato, riprova:"
    fi
done
