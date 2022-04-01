open main
pred idX4S4te8HdByZhZaT2_prop6 {
	all f:File | f in Trash implies always f in Trash 
}
pred __repair { idX4S4te8HdByZhZaT2_prop6 }
check __repair { idX4S4te8HdByZhZaT2_prop6 <=> prop6o }