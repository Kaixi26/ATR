open main
pred idtznHNBkXmgACTPqSq_prop8 {
	eventually all f:File | f.link in Trash
}
pred __repair { idtznHNBkXmgACTPqSq_prop8 }
check __repair { idtznHNBkXmgACTPqSq_prop8 <=> prop8o }