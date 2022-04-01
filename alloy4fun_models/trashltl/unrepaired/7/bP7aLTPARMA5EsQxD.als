open main
pred idbP7aLTPARMA5EsQxD_prop8 {
	eventually (some f:File | f.link in Trash)
}
pred __repair { idbP7aLTPARMA5EsQxD_prop8 }
check __repair { idbP7aLTPARMA5EsQxD_prop8 <=> prop8o }