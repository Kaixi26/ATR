open main
pred idMnJfvnbbyXpL3aK3H_prop2 {
	
	always all s: Signal | eventually s in Green
}
pred __repair { idMnJfvnbbyXpL3aK3H_prop2 }
check __repair { idMnJfvnbbyXpL3aK3H_prop2 <=> prop2o }