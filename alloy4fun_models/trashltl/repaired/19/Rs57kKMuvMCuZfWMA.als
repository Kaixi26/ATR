open main
pred idRs57kKMuvMCuZfWMA_prop20 {
	always (all f:Trash | f not in Protected triggered f in Trash)
}
pred __repair { idRs57kKMuvMCuZfWMA_prop20 }
check __repair { idRs57kKMuvMCuZfWMA_prop20 <=> prop20o }