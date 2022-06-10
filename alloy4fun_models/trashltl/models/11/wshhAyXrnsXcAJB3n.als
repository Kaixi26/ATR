open main
pred idwshhAyXrnsXcAJB3n_prop12 {
	always all f:File | eventually f in Trash && eventually f not in Trash
}
pred __repair { idwshhAyXrnsXcAJB3n_prop12 }
check __repair { idwshhAyXrnsXcAJB3n_prop12 <=> prop12o }