open main
pred id4ghLXjYNdvQbZjWyK_prop6 {
	all f: File | always (f in Trash since f in Trash)
}
pred __repair { id4ghLXjYNdvQbZjWyK_prop6 }
check __repair { id4ghLXjYNdvQbZjWyK_prop6 <=> prop6o }