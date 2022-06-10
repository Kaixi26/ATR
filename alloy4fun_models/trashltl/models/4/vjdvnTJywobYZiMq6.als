open main
pred idvjdvnTJywobYZiMq6_prop5 {
	eventually some f:File | f not in Protected and File' = File -f
}
pred __repair { idvjdvnTJywobYZiMq6_prop5 }
check __repair { idvjdvnTJywobYZiMq6_prop5 <=> prop5o }