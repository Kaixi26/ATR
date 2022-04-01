open main
pred idJZ4qdvEecKmAAggLw_prop10 {
	all p: File | once p in Protected implies always p in Protected  
}
pred __repair { idJZ4qdvEecKmAAggLw_prop10 }
check __repair { idJZ4qdvEecKmAAggLw_prop10 <=> prop10o }