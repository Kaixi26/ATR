open main
pred id4WygsFg8oPKqHze83_prop12 {
	some f:File | eventually f in Trash implies always f in Trash
}
pred __repair { id4WygsFg8oPKqHze83_prop12 }
check __repair { id4WygsFg8oPKqHze83_prop12 <=> prop12o }