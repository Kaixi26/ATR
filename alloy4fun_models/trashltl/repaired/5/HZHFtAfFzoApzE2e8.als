open main
pred idHZHFtAfFzoApzE2e8_prop6 {
	all f:File| f in Trash implies always f in Trash 
}
pred __repair { idHZHFtAfFzoApzE2e8_prop6 }
check __repair { idHZHFtAfFzoApzE2e8_prop6 <=> prop6o }