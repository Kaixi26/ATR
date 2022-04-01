open main
pred idxrsG4CkM2mzYi2gdz_prop12 {
	eventually always all f:File | f not in Trash implies f in Trash'
}
pred __repair { idxrsG4CkM2mzYi2gdz_prop12 }
check __repair { idxrsG4CkM2mzYi2gdz_prop12 <=> prop12o }