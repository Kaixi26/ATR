#!/usr/bin/env sh

CLASS_REF="edu.mit.csail.sdg.alloy4whole.RepairCLI"

if test -f "slf4j-nop-1.7.28.jar"; then
	LOGGER="slf4j-nop-1.7.28.jar"
fi

PROGRAM_JAR=$1
shift

java -cp "$PROGRAM_JAR:$LOGGER" $CLASS_REF $@
