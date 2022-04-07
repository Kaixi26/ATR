open main
pred idta3h92JwuoSLwF3gh_prop13 {
	(File in Trash) implies (once (File not in Trash))
}
pred __repair { idta3h92JwuoSLwF3gh_prop13 }
check __repair { idta3h92JwuoSLwF3gh_prop13 <=> prop13o }