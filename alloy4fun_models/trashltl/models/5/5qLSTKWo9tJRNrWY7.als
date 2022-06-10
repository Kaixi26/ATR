open main
pred id5qLSTKWo9tJRNrWY7_prop6 {
	some f: File | once f in Trash implies always f in Trash
}
pred __repair { id5qLSTKWo9tJRNrWY7_prop6 }
check __repair { id5qLSTKWo9tJRNrWY7_prop6 <=> prop6o }