open main
pred id2u3JjLAqANNhYCr6j_prop6 {
	all f:File | f in Trash implies (always f in Trash)
}
pred __repair { id2u3JjLAqANNhYCr6j_prop6 }
check __repair { id2u3JjLAqANNhYCr6j_prop6 <=> prop6o }