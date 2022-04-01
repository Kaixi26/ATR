open main
pred id5dv8ydxGdcADWckD5_prop10 {
	all f : File | f in Protected => always f in Protected and f not in Trash
}
pred __repair { id5dv8ydxGdcADWckD5_prop10 }
check __repair { id5dv8ydxGdcADWckD5_prop10 <=> prop10o }