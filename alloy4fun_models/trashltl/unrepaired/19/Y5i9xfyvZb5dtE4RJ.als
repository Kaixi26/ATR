open main
pred idY5i9xfyvZb5dtE4RJ_prop20 {
	all f : File | f in Trash since f not in Protected
}
pred __repair { idY5i9xfyvZb5dtE4RJ_prop20 }
check __repair { idY5i9xfyvZb5dtE4RJ_prop20 <=> prop20o }