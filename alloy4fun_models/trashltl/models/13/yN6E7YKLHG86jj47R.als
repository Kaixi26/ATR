open main
pred idyN6E7YKLHG86jj47R_prop14 {
	all f:File | (f in Trash and f in Protected) implies (f in Trash and f not in Protected')
}
pred __repair { idyN6E7YKLHG86jj47R_prop14 }
check __repair { idyN6E7YKLHG86jj47R_prop14 <=> prop14o }