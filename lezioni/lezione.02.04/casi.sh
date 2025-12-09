#!/bin/bash

echo "inserisci un numero tra 1 e 5:"
read numero

case $numero in
    1)
        echo "hai scelto uno"
        ;;
    2)
        echo "hai scelto due"
        ;;
    3)
        echo "hai scelto tre"
        ;;
    4)
        echo "hai scelto quattro"
        ;;
    5)
        echo "hai scelto cinque"
        ;;
    *)
        echo "numero non valido"
        ;;
esac
