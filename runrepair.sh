#!/usr/bin/env sh
CLASS_REF="edu.mit.csail.sdg.alloy4whole.RepairCLI"
java -cp $1 $CLASS_REF ${@:2}
