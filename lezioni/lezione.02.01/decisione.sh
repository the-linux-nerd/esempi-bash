#!/bin/bash

echo "inserisci un numero tra 1 e 10:"
read numero

if [ "$numero" -gt 10 ]; then
    echo "mi prendi in giro?"
fi
