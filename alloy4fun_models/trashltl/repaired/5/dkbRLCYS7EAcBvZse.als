open main
pred iddkbRLCYS7EAcBvZse_prop6 {
	all f : File | always f in Trash implies f in Trash
}
pred __repair { iddkbRLCYS7EAcBvZse_prop6 }
check __repair { iddkbRLCYS7EAcBvZse_prop6 <=> prop6o }