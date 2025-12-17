#!/bin/bash

function moltiplicazione {
    if [ -n "$2" ]; then
        local risultato=$(( $1 * $2 ))
        echo $risultato
    else
        echo 0
    fi
}

res=$(moltiplicazione 4 5)

echo $res
