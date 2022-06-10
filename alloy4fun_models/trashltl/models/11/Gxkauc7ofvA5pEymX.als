open main
pred idGxkauc7ofvA5pEymX_prop12 {
	all f:File | f in Trash implies always f in Trash
}
pred __repair { idGxkauc7ofvA5pEymX_prop12 }
check __repair { idGxkauc7ofvA5pEymX_prop12 <=> prop12o }