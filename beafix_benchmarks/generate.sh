#!/usr/bin/env sh

function generate_file(){
    OUTPUT_PATH="$1/$2"
    OUTPUT_DIR=$(dirname $OUTPUT_PATH)

    if ! (test -f "$OUTPUT_DIR"); then
        mkdir -p $OUTPUT_DIR
    fi

    ( \
        (cat $2 \
        | grep -v "^\-\-.*$" \
        | sed "s/\#m\#()//g" \
        ) \
        && printf "pred __repair {\n$3\n}\n" \
        && printf "assert __repair {\n$4\n}\n" \
        && printf "check __repair" \
    ) > $OUTPUT_PATH
}

for i in {1..15}
do
    printf "generating for inv$i\n"
    for filepath in $(find A4F-1B | grep "inv$i.*\.als")
    do
        generate_file "generated" $filepath "inv$i" "inv$i <=> inv${i}_OK"
    done
done

for filepath in $(find A4F-1B | grep "GRAPHS" | grep "\.als$")
do
    PRED=$(printf $filepath | sed -E "s/_/__/1; s/^.*__//g; s/_.*$//g; s/stronglyConnected/stonglyConnected/g")
    printf "generating for $filepath, $PRED\n"
    generate_file "generated" $filepath "$PRED" "$PRED <=> ${PRED}OK"
done
