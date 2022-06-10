open main
pred idivtJeRi9GKTHwBJRF_prop19 {
	(all f:File&Protected | eventually (f in Protected until f in Trash))
}
pred __repair { idivtJeRi9GKTHwBJRF_prop19 }
check __repair { idivtJeRi9GKTHwBJRF_prop19 <=> prop19o }