open main
pred id8m7zW8vfchkXxudvu_prop8 {
	eventually (all f1,f2:File | eventually (f1->f2 in link implies f1 in Trash))
}
pred __repair { id8m7zW8vfchkXxudvu_prop8 }
check __repair { id8m7zW8vfchkXxudvu_prop8 <=> prop8o }