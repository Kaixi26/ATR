open main
pred idXbjEH9SL6Q93W6zNJ_prop15 {
	all f:File | eventually (f not in Trash implies after f in Trash)
}
pred __repair { idXbjEH9SL6Q93W6zNJ_prop15 }
check __repair { idXbjEH9SL6Q93W6zNJ_prop15 <=> prop15o }