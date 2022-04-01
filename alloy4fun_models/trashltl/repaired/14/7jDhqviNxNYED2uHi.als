open main
pred id7jDhqviNxNYED2uHi_prop15 {
	all f:File-Trash | eventually (f in Trash)
}
pred __repair { id7jDhqviNxNYED2uHi_prop15 }
check __repair { id7jDhqviNxNYED2uHi_prop15 <=> prop15o }