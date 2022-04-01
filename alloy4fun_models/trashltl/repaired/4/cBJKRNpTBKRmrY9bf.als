open main
pred idcBJKRNpTBKRmrY9bf_prop5 {
	eventually some f : File| f in Trash and File' = File - f
}
pred __repair { idcBJKRNpTBKRmrY9bf_prop5 }
check __repair { idcBJKRNpTBKRmrY9bf_prop5 <=> prop5o }