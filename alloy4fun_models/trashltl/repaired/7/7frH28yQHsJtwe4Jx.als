open main
pred id7frH28yQHsJtwe4Jx_prop8 {
	all f,g: File| f->g in link implies eventually always f in Trash
}
pred __repair { id7frH28yQHsJtwe4Jx_prop8 }
check __repair { id7frH28yQHsJtwe4Jx_prop8 <=> prop8o }