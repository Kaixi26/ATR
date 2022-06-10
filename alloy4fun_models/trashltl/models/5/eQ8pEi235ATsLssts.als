open main
pred ideQ8pEi235ATsLssts_prop6 {
	always( some f:File | f in Trash implies always f in Trash )
}
pred __repair { ideQ8pEi235ATsLssts_prop6 }
check __repair { ideQ8pEi235ATsLssts_prop6 <=> prop6o }