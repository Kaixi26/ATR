open main
pred id8QDd7ofd8zwm595eY_prop14 {
	all f : File | f in Trash implies (after f not in Protected)
}
pred __repair { id8QDd7ofd8zwm595eY_prop14 }
check __repair { id8QDd7ofd8zwm595eY_prop14 <=> prop14o }