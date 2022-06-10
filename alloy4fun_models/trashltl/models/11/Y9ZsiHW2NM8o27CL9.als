open main
pred idY9ZsiHW2NM8o27CL9_prop12 {
	eventually some f : File | f not in Trash implies f in Trash'
}
pred __repair { idY9ZsiHW2NM8o27CL9_prop12 }
check __repair { idY9ZsiHW2NM8o27CL9_prop12 <=> prop12o }