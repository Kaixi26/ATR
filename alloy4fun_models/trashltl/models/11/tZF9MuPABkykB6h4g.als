open main
pred idtZF9MuPABkykB6h4g_prop12 {
	eventually always some f : File | f not in Trash implies f in Trash'
}
pred __repair { idtZF9MuPABkykB6h4g_prop12 }
check __repair { idtZF9MuPABkykB6h4g_prop12 <=> prop12o }