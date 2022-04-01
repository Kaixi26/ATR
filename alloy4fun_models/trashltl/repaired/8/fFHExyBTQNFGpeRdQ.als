open main
pred idfFHExyBTQNFGpeRdQ_prop9 {
	all f: File | always (f not in Trash since f in Protected)
}
pred __repair { idfFHExyBTQNFGpeRdQ_prop9 }
check __repair { idfFHExyBTQNFGpeRdQ_prop9 <=> prop9o }