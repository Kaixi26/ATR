open main
pred idHbkcyhcW4jMMF4sB6_prop6 {
	all f:File | f in Trash implies always f in Trash
}
pred __repair { idHbkcyhcW4jMMF4sB6_prop6 }
check __repair { idHbkcyhcW4jMMF4sB6_prop6 <=> prop6o }