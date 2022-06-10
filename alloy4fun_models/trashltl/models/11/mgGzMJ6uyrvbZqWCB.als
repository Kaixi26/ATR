open main
pred idmgGzMJ6uyrvbZqWCB_prop12 {
	 (some f:File | f in Trash implies always f in Trash)
}
pred __repair { idmgGzMJ6uyrvbZqWCB_prop12 }
check __repair { idmgGzMJ6uyrvbZqWCB_prop12 <=> prop12o }