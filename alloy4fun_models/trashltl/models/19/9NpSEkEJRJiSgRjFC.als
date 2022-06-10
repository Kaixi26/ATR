open main
pred id9NpSEkEJRJiSgRjFC_prop20 {
	always all f : File | f in Trash since f not in Protected
}
pred __repair { id9NpSEkEJRJiSgRjFC_prop20 }
check __repair { id9NpSEkEJRJiSgRjFC_prop20 <=> prop20o }