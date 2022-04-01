open main
pred id4xEpgLLf8Gm2udezC_prop14 {
	all f : File | f in Trash and f in Protected implies f not in Protected' 
}
pred __repair { id4xEpgLLf8Gm2udezC_prop14 }
check __repair { id4xEpgLLf8Gm2udezC_prop14 <=> prop14o }