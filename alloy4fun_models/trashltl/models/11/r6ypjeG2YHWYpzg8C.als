open main
pred idr6ypjeG2YHWYpzg8C_prop12 {
	eventually (some f : File | eventually always f in Trash implies f in Trash')
}
pred __repair { idr6ypjeG2YHWYpzg8C_prop12 }
check __repair { idr6ypjeG2YHWYpzg8C_prop12 <=> prop12o }