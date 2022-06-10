open main
pred idY8vrYcxp73Jq3ymu2_prop14 {
	after (all f:File| f in Trash&Protected implies f not in Protected)
}
pred __repair { idY8vrYcxp73Jq3ymu2_prop14 }
check __repair { idY8vrYcxp73Jq3ymu2_prop14 <=> prop14o }