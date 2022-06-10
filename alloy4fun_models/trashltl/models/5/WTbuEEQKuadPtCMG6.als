open main
pred idWTbuEEQKuadPtCMG6_prop6 {
	all f:File | always f in Trash implies always f in Trash
}
pred __repair { idWTbuEEQKuadPtCMG6_prop6 }
check __repair { idWTbuEEQKuadPtCMG6_prop6 <=> prop6o }