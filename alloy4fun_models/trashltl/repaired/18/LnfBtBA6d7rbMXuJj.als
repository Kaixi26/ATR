open main
pred idLnfBtBA6d7rbMXuJj_prop19 {
	all f : File | f in Protected until f in Trash
}
pred __repair { idLnfBtBA6d7rbMXuJj_prop19 }
check __repair { idLnfBtBA6d7rbMXuJj_prop19 <=> prop19o }