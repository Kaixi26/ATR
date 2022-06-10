open main
pred idW5PESCnEkCrPooSge_prop10 {
	all f : File | always f in Protected since f in Protected
}
pred __repair { idW5PESCnEkCrPooSge_prop10 }
check __repair { idW5PESCnEkCrPooSge_prop10 <=> prop10o }