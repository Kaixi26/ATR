open main
pred idYaAvTgG6D5aQs743n_prop20 {
	always all f : File | f in Trash since f not in Protected
}
pred __repair { idYaAvTgG6D5aQs743n_prop20 }
check __repair { idYaAvTgG6D5aQs743n_prop20 <=> prop20o }