open main
pred idKKAwmMTzPkbq9fgEr_prop18 {
	always (all f:Protected | f in Trash triggered f not in Protected)
}
pred __repair { idKKAwmMTzPkbq9fgEr_prop18 }
check __repair { idKKAwmMTzPkbq9fgEr_prop18 <=> prop18o }