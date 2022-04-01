open main
pred id9Y3GZBxXcPZfTxzA7_prop3 {
	always some f:File | f in Trash + Protected
}
pred __repair { id9Y3GZBxXcPZfTxzA7_prop3 }
check __repair { id9Y3GZBxXcPZfTxzA7_prop3 <=> prop3o }