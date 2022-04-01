open main
pred id8vKG5dM92J8WtFBzC_prop6 {
	all f : File | f' in Trash => always f' in Trash
}
pred __repair { id8vKG5dM92J8WtFBzC_prop6 }
check __repair { id8vKG5dM92J8WtFBzC_prop6 <=> prop6o }