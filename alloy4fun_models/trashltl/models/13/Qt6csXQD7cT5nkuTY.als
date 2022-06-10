open main
pred idQt6csXQD7cT5nkuTY_prop14 {
	all f:File | f in Protected&Trash implies after (f not in Protected)
}
pred __repair { idQt6csXQD7cT5nkuTY_prop14 }
check __repair { idQt6csXQD7cT5nkuTY_prop14 <=> prop14o }