open main
pred idDZYyQChcaPDjzQAj5_prop12 {
	eventually always some f : File | f not in Trash implies always f in Trash
}
pred __repair { idDZYyQChcaPDjzQAj5_prop12 }
check __repair { idDZYyQChcaPDjzQAj5_prop12 <=> prop12o }