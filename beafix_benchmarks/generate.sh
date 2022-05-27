#!/usr/bin/env sh

function generate_file(){
    OUTPUT_PATH="$1/$(echo "$2" | cut -d'/' -f2-)"
    OUTPUT_DIR=$(dirname $OUTPUT_PATH)

    mkdir -p $OUTPUT_DIR

    if [[ $5 != "" ]]; then
        ./generate.py $2 $3 $4 $5 > $OUTPUT_PATH
    else
        ./generate.py $2 $3 $4 > $OUTPUT_PATH
    fi
}

for i in {1..15}
do
    printf "generating for inv$i\n"
    (for filepath in $(find A4F-1B | grep -E "inv$i\_.*\.als")
    do
        generate_file "A4F-1B-ATR" $filepath "inv$i" "inv${i}_OK" ""
        generate_file "arepair/A4F-1B-AREPAIR" $filepath "inv$i" "inv${i}_OK" "inv$i"
    done
    printf "finished for inv$i\n") &
done

for filepath in $(find A4F-1B | grep "GRAPHS" | grep "\.als$")
do
    PRED=$(printf $filepath | sed -E "s/_/__/1; s/^.*__//g; s/_.*$//g; s/stronglyConnected/stonglyConnected/g")
    generate_file "A4F-1B-ATR" $filepath "$PRED" "${PRED}OK"
    generate_file "arepair/A4F-1B-AREPAIR" $filepath "$PRED" "${PRED}OK" "$PRED"
done

printf "waiting for everything to finish generating...\n"
wait
