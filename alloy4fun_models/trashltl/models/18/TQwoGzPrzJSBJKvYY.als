open main
pred idTQwoGzPrzJSBJKvYY_prop19 {
	eventually all p:Protected | p in Protected until p in Trash
}
pred __repair { idTQwoGzPrzJSBJKvYY_prop19 }
check __repair { idTQwoGzPrzJSBJKvYY_prop19 <=> prop19o }