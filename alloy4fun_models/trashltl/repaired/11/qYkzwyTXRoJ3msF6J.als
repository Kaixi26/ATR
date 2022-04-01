open main
pred idqYkzwyTXRoJ3msF6J_prop12 {
	always (all f: File | eventually always f in Trash)
}
pred __repair { idqYkzwyTXRoJ3msF6J_prop12 }
check __repair { idqYkzwyTXRoJ3msF6J_prop12 <=> prop12o }