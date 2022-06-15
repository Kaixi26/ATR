#!/bin/sh

for var in "$@"
do
    for model in "classroom" "cv" "graphs" "lts" "production" "trash"
    do
        mkdir -p split/$model
        grep "${model}" $var > split/$model/$var
    done
done
