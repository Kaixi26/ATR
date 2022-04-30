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
        && printf "check __repair {\n$4\n}\n" \
    ) > $OUTPUT_PATH
}

for i in {1..15}
do
    printf "generating for inv$i\n"
    for filepath in $(find . | grep "inv$i.*\.als")
    do
        generate_file "generated" $filepath "inv$i" "inv$i <=> inv${i}_OK"
    done
done

generate_file "generated" "A4F-1B/CLASSROOM/classroom_inv1_1.als"