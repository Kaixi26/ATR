open main
pred id3bZrhvT8nHKdQbaN7_prop19 {
	always (all f:File| f in Protected until f in Trash-Protected)
}
pred __repair { id3bZrhvT8nHKdQbaN7_prop19 }
check __repair { id3bZrhvT8nHKdQbaN7_prop19 <=> prop19o }