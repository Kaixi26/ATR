open main
pred idTb6FmsLdjZh9AfKvR_prop5 {
	
  	always (some f: File | f not in Trash implies after f in Trash)
}
pred __repair { idTb6FmsLdjZh9AfKvR_prop5 }
check __repair { idTb6FmsLdjZh9AfKvR_prop5 <=> prop5o }