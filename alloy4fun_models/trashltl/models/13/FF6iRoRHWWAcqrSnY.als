open main
pred idFF6iRoRHWWAcqrSnY_prop14 {
	all f:File | f in Protected&Trash until f not in Protected
}
pred __repair { idFF6iRoRHWWAcqrSnY_prop14 }
check __repair { idFF6iRoRHWWAcqrSnY_prop14 <=> prop14o }