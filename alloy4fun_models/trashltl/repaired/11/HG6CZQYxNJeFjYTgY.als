open main
pred idHG6CZQYxNJeFjYTgY_prop12 {
	eventually (all f:File | f in Trash implies (f not in Trash) releases (f in Trash))
}
pred __repair { idHG6CZQYxNJeFjYTgY_prop12 }
check __repair { idHG6CZQYxNJeFjYTgY_prop12 <=> prop12o }