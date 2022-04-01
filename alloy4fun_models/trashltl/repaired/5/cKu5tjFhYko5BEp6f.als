open main
pred idcKu5tjFhYko5BEp6f_prop6 {
	eventually all f : File | f in Trash implies always f in Trash
}
pred __repair { idcKu5tjFhYko5BEp6f_prop6 }
check __repair { idcKu5tjFhYko5BEp6f_prop6 <=> prop6o }