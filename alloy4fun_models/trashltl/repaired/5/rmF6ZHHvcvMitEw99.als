open main
pred idrmF6ZHHvcvMitEw99_prop6 {
	all f : File | always f in Trash implies f in Trash'
}
pred __repair { idrmF6ZHHvcvMitEw99_prop6 }
check __repair { idrmF6ZHHvcvMitEw99_prop6 <=> prop6o }