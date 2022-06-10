open main
pred idBE88vZMYpRK4RunP6_prop12 {
	always all f:File | f in Trash implies  f in Trash
}
pred __repair { idBE88vZMYpRK4RunP6_prop12 }
check __repair { idBE88vZMYpRK4RunP6_prop12 <=> prop12o }