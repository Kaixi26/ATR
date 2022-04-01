open main
pred id8NNERmyDkJSKt8y3L_prop17 {
	all f:File | before f not in Trash implies after File'=File-f
}
pred __repair { id8NNERmyDkJSKt8y3L_prop17 }
check __repair { id8NNERmyDkJSKt8y3L_prop17 <=> prop17o }