#!/bin/bash

function moltiplicazione {
    if [ -n "$2" ]; then
        local risultato=$(( $1 * $2 ))
        return $risultato
    else
        return 0
    fi
}

moltiplicazione 4 5

echo $?
