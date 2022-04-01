open main
pred id2ehqLwYdJhd3giJWk_prop19 {
	always all f:File | f in Protected until f in Trash
}
pred __repair { id2ehqLwYdJhd3giJWk_prop19 }
check __repair { id2ehqLwYdJhd3giJWk_prop19 <=> prop19o }