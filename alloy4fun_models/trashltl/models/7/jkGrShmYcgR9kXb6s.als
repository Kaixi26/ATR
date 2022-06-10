open main
pred idjkGrShmYcgR9kXb6s_prop8 {
	 always all f:File | eventually f in f.link implies f in Trash
}
pred __repair { idjkGrShmYcgR9kXb6s_prop8 }
check __repair { idjkGrShmYcgR9kXb6s_prop8 <=> prop8o }