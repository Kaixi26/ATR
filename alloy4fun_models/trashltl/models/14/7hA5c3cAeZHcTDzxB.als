open main
pred id7hA5c3cAeZHcTDzxB_prop15 {
	all f:File | eventually f in Trash
}
pred __repair { id7hA5c3cAeZHcTDzxB_prop15 }
check __repair { id7hA5c3cAeZHcTDzxB_prop15 <=> prop15o }