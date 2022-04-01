open main
pred idTYeZ2BWvPtz4K9rrT_prop14 {
	all f:Protected&Trash | after f not in Protected
}
pred __repair { idTYeZ2BWvPtz4K9rrT_prop14 }
check __repair { idTYeZ2BWvPtz4K9rrT_prop14 <=> prop14o }