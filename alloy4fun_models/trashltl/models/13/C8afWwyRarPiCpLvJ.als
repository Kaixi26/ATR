open main
pred idC8afWwyRarPiCpLvJ_prop14 {
	all f:File | f in (Trash & Protected) implies f not in Protected'
}
pred __repair { idC8afWwyRarPiCpLvJ_prop14 }
check __repair { idC8afWwyRarPiCpLvJ_prop14 <=> prop14o }