open main
pred idk52WAA5pCMshtWFQS_prop13 {
	all f: File | always f in Trash implies before f not in Trash
}
pred __repair { idk52WAA5pCMshtWFQS_prop13 }
check __repair { idk52WAA5pCMshtWFQS_prop13 <=> prop13o }