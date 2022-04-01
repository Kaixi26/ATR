open main
pred idx4QAbTaNK3ZMsiyqK_prop6 {
	all f : File | always (f in Trash => f in Trash')
}
pred __repair { idx4QAbTaNK3ZMsiyqK_prop6 }
check __repair { idx4QAbTaNK3ZMsiyqK_prop6 <=> prop6o }