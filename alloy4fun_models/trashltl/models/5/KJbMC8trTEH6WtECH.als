open main
pred idKJbMC8trTEH6WtECH_prop6 {
	all f : (File & Trash) | always (f in Trash)
}
pred __repair { idKJbMC8trTEH6WtECH_prop6 }
check __repair { idKJbMC8trTEH6WtECH_prop6 <=> prop6o }