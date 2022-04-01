open main
pred id89cbFivxbAddzzs8A_prop11 {
	always all f:File | (f not in Protected and f not in Trash) implies f in Protected' 
}
pred __repair { id89cbFivxbAddzzs8A_prop11 }
check __repair { id89cbFivxbAddzzs8A_prop11 <=> prop11o }