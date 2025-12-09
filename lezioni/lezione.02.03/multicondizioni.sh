#!/bin/bash

echo "inserisci un numero tra 1 e 10:"
read numero

if [ "$numero" -gt 10 ]; then
    echo "mi prendi in giro?"
elif [ "$numero" -eq 10 ]; then
    echo "preciso preciso eh?"
else
    echo "grazie per aver seguito le istruzioni"
fi
