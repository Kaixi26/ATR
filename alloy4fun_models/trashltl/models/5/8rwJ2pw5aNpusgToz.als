open main
pred id8rwJ2pw5aNpusgToz_prop6 {
	some f:File | always f in Trash implies after f in Trash
}
pred __repair { id8rwJ2pw5aNpusgToz_prop6 }
check __repair { id8rwJ2pw5aNpusgToz_prop6 <=> prop6o }