open main
pred iduFrPoak73EDBAjrGq_prop15 {
	 all f:File | eventually f in Trash
}
pred __repair { iduFrPoak73EDBAjrGq_prop15 }
check __repair { iduFrPoak73EDBAjrGq_prop15 <=> prop15o }