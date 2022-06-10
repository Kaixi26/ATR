open main
pred id7xQBdrNTWtqoKZP5t_prop8 {
	eventually (some x,y : File | x->y in link implies x in Trash and y in Trash)
}
pred __repair { id7xQBdrNTWtqoKZP5t_prop8 }
check __repair { id7xQBdrNTWtqoKZP5t_prop8 <=> prop8o }