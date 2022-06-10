open main
pred iduQ9GfX9LjBd6G2Zmc_prop6 {
	all f:File | f in Trash implies always f in Trash 
}
pred __repair { iduQ9GfX9LjBd6G2Zmc_prop6 }
check __repair { iduQ9GfX9LjBd6G2Zmc_prop6 <=> prop6o }