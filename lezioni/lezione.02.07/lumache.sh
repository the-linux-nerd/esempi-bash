#!/bin/bash

clear

POSIZIONE=0

until [ $POSIZIONE -ge 20 ]; do
    # echo "La lumaca è alla posizione $POSIZIONE"
    PASSO=$(shuf -i 1-3 -n 1)
    POSIZIONE=$((POSIZIONE + PASSO))
    clear
    for i in $(seq $POSIZIONE); do
        echo -n " "
    done
    echo "_@v"
    sleep 2
done
