open main
pred idyjdexYq3KxqZn3YeR_prop6 {
	all f : File | (f in Trash) implies always (f in Trash)
}
pred __repair { idyjdexYq3KxqZn3YeR_prop6 }
check __repair { idyjdexYq3KxqZn3YeR_prop6 <=> prop6o }