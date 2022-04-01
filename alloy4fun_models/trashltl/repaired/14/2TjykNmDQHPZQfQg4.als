open main
pred id2TjykNmDQHPZQfQg4_prop15 {
	all f:File | eventually f in Trash
}
pred __repair { id2TjykNmDQHPZQfQg4_prop15 }
check __repair { id2TjykNmDQHPZQfQg4_prop15 <=> prop15o }