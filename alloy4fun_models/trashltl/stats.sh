#!/usr/bin/env sh

print_stat() {
	DIV=$(expr "(" $2 "*" "100" ")" "/" "(" $2 "+" $3 ")")
	printf "i %-2s\trep %-4s\tunrep %-4s\tperc %-4s\n" $1 $2 $3 $DIV
}

REPAIRED=0
UNREPAIRED=0
for i in {0..19}
do
	REPAIRED_CURR=$(find repaired/$i | grep \.als | grep -v main | grep -v util | wc -l)
	UNREPAIRED_CURR=$(find unrepaired/$i | grep \.als | grep -v main | grep -v util | wc -l)
	print_stat $i $REPAIRED_CURR $UNREPAIRED_CURR
	REPAIRED=$(expr $REPAIRED "+" $REPAIRED_CURR)
	UNREPAIRED=$(expr $UNREPAIRED "+" $UNREPAIRED_CURR)
done

print_stat "tot" $REPAIRED $UNREPAIRED
