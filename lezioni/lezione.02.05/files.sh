#!/bin/bash

for f in $(ls *.txt); do
    echo "Contenuto del file $f:"
    cat "$f"
    echo "---------------------"
done
