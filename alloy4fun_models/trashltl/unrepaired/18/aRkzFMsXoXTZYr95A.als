open main
pred idaRkzFMsXoXTZYr95A_prop19 {
	always all f:File | f in Protected until f in Trash
}
pred __repair { idaRkzFMsXoXTZYr95A_prop19 }
check __repair { idaRkzFMsXoXTZYr95A_prop19 <=> prop19o }