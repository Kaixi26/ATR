open main
pred id4LHsirTkdz9MkzAmo_prop15 {
	all f : File - Trash | eventually f in Trash
}
pred __repair { id4LHsirTkdz9MkzAmo_prop15 }
check __repair { id4LHsirTkdz9MkzAmo_prop15 <=> prop15o }