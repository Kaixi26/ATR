open main
pred idKcppa3PrnAu25Pn7K_prop6 {
	all f:File | f in Trash implies always f in Trash
}
pred __repair { idKcppa3PrnAu25Pn7K_prop6 }
check __repair { idKcppa3PrnAu25Pn7K_prop6 <=> prop6o }