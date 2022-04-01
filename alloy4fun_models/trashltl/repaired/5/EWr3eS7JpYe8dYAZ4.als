open main
pred idEWr3eS7JpYe8dYAZ4_prop6 {
	all f : File | f in Trash implies always f in Trash
}
pred __repair { idEWr3eS7JpYe8dYAZ4_prop6 }
check __repair { idEWr3eS7JpYe8dYAZ4_prop6 <=> prop6o }