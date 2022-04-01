open main
pred idcghbJ8G6DwEtXxpFQ_prop10 {
	all f: (File & Protected) | always  f in Protected
}
pred __repair { idcghbJ8G6DwEtXxpFQ_prop10 }
check __repair { idcghbJ8G6DwEtXxpFQ_prop10 <=> prop10o }