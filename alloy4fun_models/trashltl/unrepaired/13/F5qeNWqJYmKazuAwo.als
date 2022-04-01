open main
pred idF5qeNWqJYmKazuAwo_prop14 {
	always (all f:File | f in Trash implies after f not in Protected)
}
pred __repair { idF5qeNWqJYmKazuAwo_prop14 }
check __repair { idF5qeNWqJYmKazuAwo_prop14 <=> prop14o }