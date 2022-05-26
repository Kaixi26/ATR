#!/usr/bin/env sh

function generate_file(){
    OUTPUT_PATH="$1/$(echo "$2" | cut -d'/' -f2-)"
    OUTPUT_DIR=$(dirname $OUTPUT_PATH)

    if ! (test -f "$OUTPUT_DIR"); then
        mkdir -p $OUTPUT_DIR
    fi

    (cat $2 \
    | grep -v "^\-\-.*$" \
    | sed "s/\#m\#()//g" \
    ) > $OUTPUT_PATH
    printf "pred __repair {\n\t$3\n}\n" >> $OUTPUT_PATH
    printf "assert __repair {\n\t$4\n}\n" >> $OUTPUT_PATH
    printf "check __repair\n" >> $OUTPUT_PATH
    if [[ $5 != "" ]]; then
        printf "fact __repair {\n\t$5\n}\n" >> $OUTPUT_PATH
    fi
}

for i in {1..15}
do
    printf "generating for inv$i\n"
    (for filepath in $(find A4F-1B | grep "inv$i.*\.als")
    do
        generate_file "A4F-1B-ATR" $filepath "inv$i" "inv$i <=> inv${i}_OK" ""
        generate_file "A4F-1B-AREPAIR" $filepath "inv$i" "inv$i <=> inv${i}_OK" "inv$i"
    done
    printf "finished for inv$i\n") &
done

for filepath in $(find A4F-1B | grep "GRAPHS" | grep "\.als$")
do
    PRED=$(printf $filepath | sed -E "s/_/__/1; s/^.*__//g; s/_.*$//g; s/stronglyConnected/stonglyConnected/g")
    #printf "generating for $filepath, $PRED\n"
    generate_file "A4F-1B-ATR" $filepath "$PRED" "$PRED <=> ${PRED}OK"
    generate_file "A4F-1B-AREPAIR" $filepath "$PRED" "$PRED <=> ${PRED}OK" ""$PRED""
done &

printf "waiting for everything to finish generating...\n"
wait