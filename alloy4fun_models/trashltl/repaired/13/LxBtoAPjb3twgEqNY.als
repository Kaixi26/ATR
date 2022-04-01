open main
pred idLxBtoAPjb3twgEqNY_prop14 {
	always some f : Protected & Trash | (f in Protected & Trash) implies (f not in Protected')
}
pred __repair { idLxBtoAPjb3twgEqNY_prop14 }
check __repair { idLxBtoAPjb3twgEqNY_prop14 <=> prop14o }