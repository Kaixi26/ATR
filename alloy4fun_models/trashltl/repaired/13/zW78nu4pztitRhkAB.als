open main
pred idzW78nu4pztitRhkAB_prop14 {
	 all p:Protected | p in Trash implies after p not in Protected
}
pred __repair { idzW78nu4pztitRhkAB_prop14 }
check __repair { idzW78nu4pztitRhkAB_prop14 <=> prop14o }