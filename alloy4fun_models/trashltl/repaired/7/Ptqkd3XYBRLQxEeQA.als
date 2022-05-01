open main
pred idPtqkd3XYBRLQxEeQA_prop8 {
	all f1, f2 : File | (f1 -> f2) in link implies eventually (f1 in Trash and f2 in Trash)
}
pred __repair { idPtqkd3XYBRLQxEeQA_prop8 }
check __repair { idPtqkd3XYBRLQxEeQA_prop8 <=> prop8o }