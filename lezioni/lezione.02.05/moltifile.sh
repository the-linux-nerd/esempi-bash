#!/bin/bash

for i in $(seq 10); do
    echo "$(fortune -s)" > file_$i.txt
done
