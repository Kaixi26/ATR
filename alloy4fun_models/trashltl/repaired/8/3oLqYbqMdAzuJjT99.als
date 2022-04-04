open main
pred id3oLqYbqMdAzuJjT99_prop9 {
	all f:File | f in Protected implies always f in Protected
}
pred __repair { id3oLqYbqMdAzuJjT99_prop9 }
check __repair { id3oLqYbqMdAzuJjT99_prop9 <=> prop9o }