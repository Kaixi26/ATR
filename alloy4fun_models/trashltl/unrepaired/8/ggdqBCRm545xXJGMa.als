open main
pred idggdqBCRm545xXJGMa_prop9 {
	all f: File | always f not in Trash since f in Protected
}
pred __repair { idggdqBCRm545xXJGMa_prop9 }
check __repair { idggdqBCRm545xXJGMa_prop9 <=> prop9o }