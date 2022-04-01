open main
pred idc9F7REYrvZFWoxoJk_prop8 {
	eventually all f:File | f.link in Trash
}
pred __repair { idc9F7REYrvZFWoxoJk_prop8 }
check __repair { idc9F7REYrvZFWoxoJk_prop8 <=> prop8o }