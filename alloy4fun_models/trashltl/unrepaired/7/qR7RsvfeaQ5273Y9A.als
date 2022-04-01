open main
pred idqR7RsvfeaQ5273Y9A_prop8 {
	always (all f: File | eventually some (f.link & Trash))
}
pred __repair { idqR7RsvfeaQ5273Y9A_prop8 }
check __repair { idqR7RsvfeaQ5273Y9A_prop8 <=> prop8o }