open main
pred idz76cwma3rbdtGkE5u_prop19 {
	eventually (all f:File | f in Protected until f in Trash)
}
pred __repair { idz76cwma3rbdtGkE5u_prop19 }
check __repair { idz76cwma3rbdtGkE5u_prop19 <=> prop19o }