open main
pred idBxKXQFpa2FowGoBn4_prop6 {
	all f:File | (f in Trash) triggered (f in Trash)
}
pred __repair { idBxKXQFpa2FowGoBn4_prop6 }
check __repair { idBxKXQFpa2FowGoBn4_prop6 <=> prop6o }