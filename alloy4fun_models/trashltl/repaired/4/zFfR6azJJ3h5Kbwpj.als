open main
pred idzFfR6azJJ3h5Kbwpj_prop5 {
	eventually (all t: File | File' = File - t)
}
pred __repair { idzFfR6azJJ3h5Kbwpj_prop5 }
check __repair { idzFfR6azJJ3h5Kbwpj_prop5 <=> prop5o }