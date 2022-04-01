open main
pred id7Cra2HnK7RiLwnRwz_prop6 {
	all f:File | f in Trash implies always (f in Trash)
}
pred __repair { id7Cra2HnK7RiLwnRwz_prop6 }
check __repair { id7Cra2HnK7RiLwnRwz_prop6 <=> prop6o }