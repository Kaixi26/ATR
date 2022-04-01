open main
pred idA7dTJLvqDXNpKahkS_prop13 {
	always all f : File | (f not in Trash) until (f in Trash)
}
pred __repair { idA7dTJLvqDXNpKahkS_prop13 }
check __repair { idA7dTJLvqDXNpKahkS_prop13 <=> prop13o }