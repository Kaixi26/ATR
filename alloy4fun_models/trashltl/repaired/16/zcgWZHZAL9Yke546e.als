open main
pred idzcgWZHZAL9Yke546e_prop17 {
	all f:File | f in Trash implies after f not in File
}
pred __repair { idzcgWZHZAL9Yke546e_prop17 }
check __repair { idzcgWZHZAL9Yke546e_prop17 <=> prop17o }