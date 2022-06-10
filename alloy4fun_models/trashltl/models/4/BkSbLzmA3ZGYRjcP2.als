open main
pred idBkSbLzmA3ZGYRjcP2_prop5 {
	all f : Trash | always eventually f not in File
}
pred __repair { idBkSbLzmA3ZGYRjcP2_prop5 }
check __repair { idBkSbLzmA3ZGYRjcP2_prop5 <=> prop5o }